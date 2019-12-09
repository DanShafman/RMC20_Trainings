// Generated by gencpp from file advanced_ros_demo/Testdata.msg
// DO NOT EDIT!


#ifndef ADVANCED_ROS_DEMO_MESSAGE_TESTDATA_H
#define ADVANCED_ROS_DEMO_MESSAGE_TESTDATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace advanced_ros_demo
{
template <class ContainerAllocator>
struct Testdata_
{
  typedef Testdata_<ContainerAllocator> Type;

  Testdata_()
    : size(0)
    , name()  {
    }
  Testdata_(const ContainerAllocator& _alloc)
    : size(0)
    , name(_alloc)  {
  (void)_alloc;
    }



   typedef int8_t _size_type;
  _size_type size;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;





  typedef boost::shared_ptr< ::advanced_ros_demo::Testdata_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::advanced_ros_demo::Testdata_<ContainerAllocator> const> ConstPtr;

}; // struct Testdata_

typedef ::advanced_ros_demo::Testdata_<std::allocator<void> > Testdata;

typedef boost::shared_ptr< ::advanced_ros_demo::Testdata > TestdataPtr;
typedef boost::shared_ptr< ::advanced_ros_demo::Testdata const> TestdataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::advanced_ros_demo::Testdata_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::advanced_ros_demo::Testdata_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace advanced_ros_demo

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'advanced_ros_demo': ['/home/dan/Code/RMC_ws/src/advanced_ros_demo/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::advanced_ros_demo::Testdata_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::advanced_ros_demo::Testdata_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::advanced_ros_demo::Testdata_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::advanced_ros_demo::Testdata_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::advanced_ros_demo::Testdata_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::advanced_ros_demo::Testdata_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::advanced_ros_demo::Testdata_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e0d915e95f9f4c214eaa0fa3036c01c2";
  }

  static const char* value(const ::advanced_ros_demo::Testdata_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe0d915e95f9f4c21ULL;
  static const uint64_t static_value2 = 0x4eaa0fa3036c01c2ULL;
};

template<class ContainerAllocator>
struct DataType< ::advanced_ros_demo::Testdata_<ContainerAllocator> >
{
  static const char* value()
  {
    return "advanced_ros_demo/Testdata";
  }

  static const char* value(const ::advanced_ros_demo::Testdata_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::advanced_ros_demo::Testdata_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 size\n"
"string name\n"
;
  }

  static const char* value(const ::advanced_ros_demo::Testdata_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::advanced_ros_demo::Testdata_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.size);
      stream.next(m.name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Testdata_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::advanced_ros_demo::Testdata_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::advanced_ros_demo::Testdata_<ContainerAllocator>& v)
  {
    s << indent << "size: ";
    Printer<int8_t>::stream(s, indent + "  ", v.size);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ADVANCED_ROS_DEMO_MESSAGE_TESTDATA_H