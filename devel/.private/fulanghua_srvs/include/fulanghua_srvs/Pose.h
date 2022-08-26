// Generated by gencpp from file fulanghua_srvs/Pose.msg
// DO NOT EDIT!


#ifndef FULANGHUA_SRVS_MESSAGE_POSE_H
#define FULANGHUA_SRVS_MESSAGE_POSE_H

#include <ros/service_traits.h>


#include <fulanghua_srvs/PoseRequest.h>
#include <fulanghua_srvs/PoseResponse.h>


namespace fulanghua_srvs
{

struct Pose
{

typedef PoseRequest Request;
typedef PoseResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Pose
} // namespace fulanghua_srvs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::fulanghua_srvs::Pose > {
  static const char* value()
  {
    return "2c06c39bfac810268e3bcf68619273a5";
  }

  static const char* value(const ::fulanghua_srvs::Pose&) { return value(); }
};

template<>
struct DataType< ::fulanghua_srvs::Pose > {
  static const char* value()
  {
    return "fulanghua_srvs/Pose";
  }

  static const char* value(const ::fulanghua_srvs::Pose&) { return value(); }
};


// service_traits::MD5Sum< ::fulanghua_srvs::PoseRequest> should match
// service_traits::MD5Sum< ::fulanghua_srvs::Pose >
template<>
struct MD5Sum< ::fulanghua_srvs::PoseRequest>
{
  static const char* value()
  {
    return MD5Sum< ::fulanghua_srvs::Pose >::value();
  }
  static const char* value(const ::fulanghua_srvs::PoseRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::fulanghua_srvs::PoseRequest> should match
// service_traits::DataType< ::fulanghua_srvs::Pose >
template<>
struct DataType< ::fulanghua_srvs::PoseRequest>
{
  static const char* value()
  {
    return DataType< ::fulanghua_srvs::Pose >::value();
  }
  static const char* value(const ::fulanghua_srvs::PoseRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::fulanghua_srvs::PoseResponse> should match
// service_traits::MD5Sum< ::fulanghua_srvs::Pose >
template<>
struct MD5Sum< ::fulanghua_srvs::PoseResponse>
{
  static const char* value()
  {
    return MD5Sum< ::fulanghua_srvs::Pose >::value();
  }
  static const char* value(const ::fulanghua_srvs::PoseResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::fulanghua_srvs::PoseResponse> should match
// service_traits::DataType< ::fulanghua_srvs::Pose >
template<>
struct DataType< ::fulanghua_srvs::PoseResponse>
{
  static const char* value()
  {
    return DataType< ::fulanghua_srvs::Pose >::value();
  }
  static const char* value(const ::fulanghua_srvs::PoseResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // FULANGHUA_SRVS_MESSAGE_POSE_H
