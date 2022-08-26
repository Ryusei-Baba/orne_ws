# ORNEの環境構築について(noetic)
Ubuntu20.04上にROSのセットアップがすでになされている環境を対象にORNEの環境構築について解説します.
***
## 環境構築
上から順にコマンドを実行してください.   
ツールの用意
```
sudo apt update && sudo apt install python3-catkin-tools python3-wstool wget
```

## ワークスペースの用意
```
mkdir -p ~/orne_ws/src
cd ~/orne_ws/src
catkin_init_workspace
cd ../
catkin build
```

## orne_navigationの用意
```
cd ~/orne_ws/src
wget https://raw.githubusercontent.com/open-rdc/orne_navigation/noetic-devel/orne_pkgs.install
wstool init
wstool merge orne_pkgs.install
wstool up
```

## 依存パッケージのインストール
```
($ cd ~/orne_ws/src)
rosdep install --from-paths . --ignore-src --rosdistro $ROS_DISTRO -y
```

## ビルド
```
catkin build
```

## .bashrcに書き込み
```
echo "source ~/orne_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc
```

***

# rosbagの取り方
## ①bringup
```
roslaunch orne_bringup orne_alpha.launch
```
## ②teleop起動
```
roslaunch icart_mini_driver teleop_joy.launch
```
## ③rosbagの起動
```
rosbag record -a
```

③を打つとトピック名がターミナルにズラっと並びますので、そしたらbagデータを取り始めている．   
そのターミナルは終了せずにそのままでteleopで津田沼とか周回する．   

終わらせたい時はrosbag record -aを打ったターミナルでCntl＋C押せば良い．   
そうすると記録が終わって勝手にbagファイルとしてセーブされる．(ファイル名は年月日時間.bag)   

ちなみにrosbag record -a の-aは全部のトピックを記録するコマンド．   
通常はrosbag record /scan /tf /odom /imuみたいな感じで記録したいトピック名を打っていく．   
カメラ画像がない場合は全部記録しても容量に問題はない．   
あと、rosbag record -o {ファイル名}　とかにすれば保存するファイル名も指定できる．   

***

# 再生する時(地図作る時)の方法
## ターミナル1
```
roscore
```
## ターミナル2
```
rosrun gmapping slam_gmapping
```
## ターミナル3
```
rosbag play {bagファイル名(フルパスで)}
```
例 rosbag play /home/ryusei/2022-08-25-17-24-34.bag   
ワザップ rosbag play /home/ryusei/2022-08-25-17-24-34.bag -r 0.5 --clock   
と打つと0.5倍速で再生できる．   
倍速は適宜変更しても良いが速くしても多分上手くいかない．

## ターミナル4
```
rvis
```
rvizと打つとrvizが起動する．   
起動したら左下のaddボタンを押す．   
その中に by topic があるのでmapを選んでOKすると地図の作成の様子が見れる．   

地図を保存したいときは今まで同様,これまでのターミナルを消さずに下のコマンドで保存できる．
```
rosrun map_server map_saver -f 地図の名前(pathの指定)
```

***

# LiDAR ipアドレス設定
PCの設定を開き有線接続の設定を行う．   
・Identityの名前をhokuyo   
・IPv4を手動にし，アドレス192.168.1.100, ネットマスク255.255.255.0, ゲートウェイ192.168.1.1と設定する.

launchファイル
```
<?xml version="1.0"?>

<launch>
  <arg name="scan_topic"	        default="/scan"/>
  <arg name="scan_frame"          default="/hokuyo_link"/>
  <arg name="model"               default="$(find xacro)/xacro.py '$(find icart_mini_description)/urdf/icart_mini.xacro'"/>
  <arg name="ypspur_params"       default="/usr/local/share/robot-params/icart-mini.param"/>
  <arg name="use_eth_urg"         default="true"/>
  <arg name="urg_ip"              default="192.168.1.102" if="$(arg use_eth_urg)"/>
  <arg name="scan_dev"            default="/dev/sensors/hokuyo_urg" unless="$(arg use_eth_urg)"/>

  <node name="ypspur_coordinator_bridge" pkg="icart_mini_driver" type="ypspur_coordinator_bridge" args="$(arg ypspur_params)" output="screen"/>

  <param name="robot_description" command="$(arg model)" />

  <node pkg="urg_node" type="urg_node" name="urg_node">
    <remap from="/scan" to="$(arg scan_topic)"/>
    <param name="frame_id" value="$(arg scan_frame)"/>
    <param name="ip_address"  value="$(arg urg_ip)" if="$(arg use_eth_urg)"/>
    <param name="serial_port" value="$(arg scan_dev)" unless="$(arg use_eth_urg)"/>
    <param name="publish_multiecho" value="false"/>
    <param name="angle_min" value="-1.57"/>
    <param name="angle_max" value="1.57"/>
  </node>

  <node name="icart_mini_driver_node" pkg="icart_mini_driver" output="screen" type="icart_mini_driver_node"/>
  
  <include file="$(find icart_mini_control)/launch/icart_mini_control.launch" />
  
</launch>
```
# ジョイコン操作時の速度
```
cd ~/orne_ws/src/icart/icart_mini_driver/config
code elecom_joy.yaml
```
