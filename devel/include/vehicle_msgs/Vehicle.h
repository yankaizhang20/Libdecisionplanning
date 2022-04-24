// Generated by gencpp from file vehicle_msgs/Vehicle.msg
// DO NOT EDIT!


#ifndef VEHICLE_MSGS_MESSAGE_VEHICLE_H
#define VEHICLE_MSGS_MESSAGE_VEHICLE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <std_msgs/Int32.h>
#include <std_msgs/String.h>
#include <std_msgs/String.h>
#include <vehicle_msgs/VehicleParam.h>
#include <vehicle_msgs/State.h>

namespace vehicle_msgs
{
template <class ContainerAllocator>
struct Vehicle_
{
  typedef Vehicle_<ContainerAllocator> Type;

  Vehicle_()
    : header()
    , id()
    , subclass()
    , type()
    , param()
    , state()  {
    }
  Vehicle_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , id(_alloc)
    , subclass(_alloc)
    , type(_alloc)
    , param(_alloc)
    , state(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::std_msgs::Int32_<ContainerAllocator>  _id_type;
  _id_type id;

   typedef  ::std_msgs::String_<ContainerAllocator>  _subclass_type;
  _subclass_type subclass;

   typedef  ::std_msgs::String_<ContainerAllocator>  _type_type;
  _type_type type;

   typedef  ::vehicle_msgs::VehicleParam_<ContainerAllocator>  _param_type;
  _param_type param;

   typedef  ::vehicle_msgs::State_<ContainerAllocator>  _state_type;
  _state_type state;





  typedef boost::shared_ptr< ::vehicle_msgs::Vehicle_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vehicle_msgs::Vehicle_<ContainerAllocator> const> ConstPtr;

}; // struct Vehicle_

typedef ::vehicle_msgs::Vehicle_<std::allocator<void> > Vehicle;

typedef boost::shared_ptr< ::vehicle_msgs::Vehicle > VehiclePtr;
typedef boost::shared_ptr< ::vehicle_msgs::Vehicle const> VehicleConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vehicle_msgs::Vehicle_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vehicle_msgs::Vehicle_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::vehicle_msgs::Vehicle_<ContainerAllocator1> & lhs, const ::vehicle_msgs::Vehicle_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.id == rhs.id &&
    lhs.subclass == rhs.subclass &&
    lhs.type == rhs.type &&
    lhs.param == rhs.param &&
    lhs.state == rhs.state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::vehicle_msgs::Vehicle_<ContainerAllocator1> & lhs, const ::vehicle_msgs::Vehicle_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace vehicle_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::vehicle_msgs::Vehicle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vehicle_msgs::Vehicle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vehicle_msgs::Vehicle_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vehicle_msgs::Vehicle_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vehicle_msgs::Vehicle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vehicle_msgs::Vehicle_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vehicle_msgs::Vehicle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0372a2fa6275905a037fbc1ca20c1ad6";
  }

  static const char* value(const ::vehicle_msgs::Vehicle_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0372a2fa6275905aULL;
  static const uint64_t static_value2 = 0x037fbc1ca20c1ad6ULL;
};

template<class ContainerAllocator>
struct DataType< ::vehicle_msgs::Vehicle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vehicle_msgs/Vehicle";
  }

  static const char* value(const ::vehicle_msgs::Vehicle_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vehicle_msgs::Vehicle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"std_msgs/Int32 id\n"
"std_msgs/String subclass\n"
"std_msgs/String type\n"
"VehicleParam param\n"
"State state\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Int32\n"
"int32 data\n"
"================================================================================\n"
"MSG: std_msgs/String\n"
"string data\n"
"\n"
"================================================================================\n"
"MSG: vehicle_msgs/VehicleParam\n"
"# Kinematic\n"
"float32 width\n"
"float32 length\n"
"float32 wheel_base\n"
"float32 front_suspension\n"
"float32 rear_suspension\n"
"float32 max_steering_angle\n"
"\n"
"float32 d_cr # Length between rear axle to center of vehicle\n"
"\n"
"# Dynamic\n"
"float32 max_longitudinal_acc\n"
"float32 max_lateral_acc\n"
"\n"
"================================================================================\n"
"MSG: vehicle_msgs/State\n"
"Header header\n"
"geometry_msgs/Point vec_position\n"
"float64 angle\n"
"float64 curvature\n"
"float64 velocity\n"
"float64 acceleration\n"
"float64 steer\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::vehicle_msgs::Vehicle_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vehicle_msgs::Vehicle_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.id);
      stream.next(m.subclass);
      stream.next(m.type);
      stream.next(m.param);
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Vehicle_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vehicle_msgs::Vehicle_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vehicle_msgs::Vehicle_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "id: ";
    s << std::endl;
    Printer< ::std_msgs::Int32_<ContainerAllocator> >::stream(s, indent + "  ", v.id);
    s << indent << "subclass: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.subclass);
    s << indent << "type: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.type);
    s << indent << "param: ";
    s << std::endl;
    Printer< ::vehicle_msgs::VehicleParam_<ContainerAllocator> >::stream(s, indent + "  ", v.param);
    s << indent << "state: ";
    s << std::endl;
    Printer< ::vehicle_msgs::State_<ContainerAllocator> >::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VEHICLE_MSGS_MESSAGE_VEHICLE_H
