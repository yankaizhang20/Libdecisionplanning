// Auto-generated. Do not edit!

// (in-package vehicle_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehicleSet = require('./VehicleSet.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ArenaInfoDynamic {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.vehicle_set = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('vehicle_set')) {
        this.vehicle_set = initObj.vehicle_set
      }
      else {
        this.vehicle_set = new VehicleSet();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArenaInfoDynamic
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [vehicle_set]
    bufferOffset = VehicleSet.serialize(obj.vehicle_set, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArenaInfoDynamic
    let len;
    let data = new ArenaInfoDynamic(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_set]
    data.vehicle_set = VehicleSet.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += VehicleSet.getMessageSize(object.vehicle_set);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vehicle_msgs/ArenaInfoDynamic';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '62d9bd9cf1ada8374b9687820f8ba4bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    VehicleSet  vehicle_set
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: vehicle_msgs/VehicleSet
    Header header
    
    Vehicle[] vehicles
    
    ================================================================================
    MSG: vehicle_msgs/Vehicle
    Header header
    std_msgs/Int32 id
    std_msgs/String subclass
    std_msgs/String type
    VehicleParam param
    State state
    
    ================================================================================
    MSG: std_msgs/Int32
    int32 data
    ================================================================================
    MSG: std_msgs/String
    string data
    
    ================================================================================
    MSG: vehicle_msgs/VehicleParam
    # Kinematic
    float32 width
    float32 length
    float32 wheel_base
    float32 front_suspension
    float32 rear_suspension
    float32 max_steering_angle
    
    float32 d_cr # Length between rear axle to center of vehicle
    
    # Dynamic
    float32 max_longitudinal_acc
    float32 max_lateral_acc
    
    ================================================================================
    MSG: vehicle_msgs/State
    Header header
    geometry_msgs/Point vec_position
    float64 angle
    float64 curvature
    float64 velocity
    float64 acceleration
    float64 steer
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArenaInfoDynamic(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.vehicle_set !== undefined) {
      resolved.vehicle_set = VehicleSet.Resolve(msg.vehicle_set)
    }
    else {
      resolved.vehicle_set = new VehicleSet()
    }

    return resolved;
    }
};

module.exports = ArenaInfoDynamic;
