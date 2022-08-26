// Generated by gencpp from file cartographer_ros_msgs/Metric.msg
// DO NOT EDIT!


#ifndef CARTOGRAPHER_ROS_MSGS_MESSAGE_METRIC_H
#define CARTOGRAPHER_ROS_MSGS_MESSAGE_METRIC_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <cartographer_ros_msgs/MetricLabel.h>
#include <cartographer_ros_msgs/HistogramBucket.h>

namespace cartographer_ros_msgs
{
template <class ContainerAllocator>
struct Metric_
{
  typedef Metric_<ContainerAllocator> Type;

  Metric_()
    : type(0)
    , labels()
    , value(0.0)
    , counts_by_bucket()  {
    }
  Metric_(const ContainerAllocator& _alloc)
    : type(0)
    , labels(_alloc)
    , value(0.0)
    , counts_by_bucket(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _type_type;
  _type_type type;

   typedef std::vector< ::cartographer_ros_msgs::MetricLabel_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::cartographer_ros_msgs::MetricLabel_<ContainerAllocator> >::other >  _labels_type;
  _labels_type labels;

   typedef double _value_type;
  _value_type value;

   typedef std::vector< ::cartographer_ros_msgs::HistogramBucket_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::cartographer_ros_msgs::HistogramBucket_<ContainerAllocator> >::other >  _counts_by_bucket_type;
  _counts_by_bucket_type counts_by_bucket;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(TYPE_COUNTER)
  #undef TYPE_COUNTER
#endif
#if defined(_WIN32) && defined(TYPE_GAUGE)
  #undef TYPE_GAUGE
#endif
#if defined(_WIN32) && defined(TYPE_HISTOGRAM)
  #undef TYPE_HISTOGRAM
#endif

  enum {
    TYPE_COUNTER = 0u,
    TYPE_GAUGE = 1u,
    TYPE_HISTOGRAM = 2u,
  };


  typedef boost::shared_ptr< ::cartographer_ros_msgs::Metric_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cartographer_ros_msgs::Metric_<ContainerAllocator> const> ConstPtr;

}; // struct Metric_

typedef ::cartographer_ros_msgs::Metric_<std::allocator<void> > Metric;

typedef boost::shared_ptr< ::cartographer_ros_msgs::Metric > MetricPtr;
typedef boost::shared_ptr< ::cartographer_ros_msgs::Metric const> MetricConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cartographer_ros_msgs::Metric_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cartographer_ros_msgs::Metric_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cartographer_ros_msgs::Metric_<ContainerAllocator1> & lhs, const ::cartographer_ros_msgs::Metric_<ContainerAllocator2> & rhs)
{
  return lhs.type == rhs.type &&
    lhs.labels == rhs.labels &&
    lhs.value == rhs.value &&
    lhs.counts_by_bucket == rhs.counts_by_bucket;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cartographer_ros_msgs::Metric_<ContainerAllocator1> & lhs, const ::cartographer_ros_msgs::Metric_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cartographer_ros_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::cartographer_ros_msgs::Metric_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cartographer_ros_msgs::Metric_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cartographer_ros_msgs::Metric_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cartographer_ros_msgs::Metric_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cartographer_ros_msgs::Metric_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cartographer_ros_msgs::Metric_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cartographer_ros_msgs::Metric_<ContainerAllocator> >
{
  static const char* value()
  {
    return "94a6ea1c6ef245b483a220f6769c8e36";
  }

  static const char* value(const ::cartographer_ros_msgs::Metric_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x94a6ea1c6ef245b4ULL;
  static const uint64_t static_value2 = 0x83a220f6769c8e36ULL;
};

template<class ContainerAllocator>
struct DataType< ::cartographer_ros_msgs::Metric_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cartographer_ros_msgs/Metric";
  }

  static const char* value(const ::cartographer_ros_msgs::Metric_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cartographer_ros_msgs::Metric_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# 2018 The Cartographer Authors\n"
"#\n"
"# Licensed under the Apache License, Version 2.0 (the \"License\");\n"
"# you may not use this file except in compliance with the License.\n"
"# You may obtain a copy of the License at\n"
"#\n"
"#      http://www.apache.org/licenses/LICENSE-2.0\n"
"#\n"
"# Unless required by applicable law or agreed to in writing, software\n"
"# distributed under the License is distributed on an \"AS IS\" BASIS,\n"
"# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n"
"# See the License for the specific language governing permissions and\n"
"# limitations under the License.\n"
"\n"
"uint8 TYPE_COUNTER=0\n"
"uint8 TYPE_GAUGE=1\n"
"uint8 TYPE_HISTOGRAM=2\n"
"\n"
"uint8 type\n"
"cartographer_ros_msgs/MetricLabel[] labels\n"
"\n"
"# TYPE_COUNTER or TYPE_GAUGE\n"
"float64 value\n"
"\n"
"# TYPE_HISTOGRAM\n"
"cartographer_ros_msgs/HistogramBucket[] counts_by_bucket\n"
"\n"
"================================================================================\n"
"MSG: cartographer_ros_msgs/MetricLabel\n"
"# 2018 The Cartographer Authors\n"
"#\n"
"# Licensed under the Apache License, Version 2.0 (the \"License\");\n"
"# you may not use this file except in compliance with the License.\n"
"# You may obtain a copy of the License at\n"
"#\n"
"#      http://www.apache.org/licenses/LICENSE-2.0\n"
"#\n"
"# Unless required by applicable law or agreed to in writing, software\n"
"# distributed under the License is distributed on an \"AS IS\" BASIS,\n"
"# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n"
"# See the License for the specific language governing permissions and\n"
"# limitations under the License.\n"
"\n"
"string key\n"
"string value\n"
"\n"
"================================================================================\n"
"MSG: cartographer_ros_msgs/HistogramBucket\n"
"# 2018 The Cartographer Authors\n"
"#\n"
"# Licensed under the Apache License, Version 2.0 (the \"License\");\n"
"# you may not use this file except in compliance with the License.\n"
"# You may obtain a copy of the License at\n"
"#\n"
"#      http://www.apache.org/licenses/LICENSE-2.0\n"
"#\n"
"# Unless required by applicable law or agreed to in writing, software\n"
"# distributed under the License is distributed on an \"AS IS\" BASIS,\n"
"# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n"
"# See the License for the specific language governing permissions and\n"
"# limitations under the License.\n"
"\n"
"# A histogram bucket counts values x for which:\n"
"#   previous_boundary < x <= bucket_boundary\n"
"# holds.\n"
"float64 bucket_boundary\n"
"float64 count\n"
;
  }

  static const char* value(const ::cartographer_ros_msgs::Metric_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cartographer_ros_msgs::Metric_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.type);
      stream.next(m.labels);
      stream.next(m.value);
      stream.next(m.counts_by_bucket);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Metric_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cartographer_ros_msgs::Metric_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cartographer_ros_msgs::Metric_<ContainerAllocator>& v)
  {
    s << indent << "type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.type);
    s << indent << "labels[]" << std::endl;
    for (size_t i = 0; i < v.labels.size(); ++i)
    {
      s << indent << "  labels[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::cartographer_ros_msgs::MetricLabel_<ContainerAllocator> >::stream(s, indent + "    ", v.labels[i]);
    }
    s << indent << "value: ";
    Printer<double>::stream(s, indent + "  ", v.value);
    s << indent << "counts_by_bucket[]" << std::endl;
    for (size_t i = 0; i < v.counts_by_bucket.size(); ++i)
    {
      s << indent << "  counts_by_bucket[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::cartographer_ros_msgs::HistogramBucket_<ContainerAllocator> >::stream(s, indent + "    ", v.counts_by_bucket[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CARTOGRAPHER_ROS_MSGS_MESSAGE_METRIC_H
