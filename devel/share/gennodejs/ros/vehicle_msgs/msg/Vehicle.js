// Auto-generated. Do not edit!

// (in-package vehicle_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehicleParam = require('./VehicleParam.js');
let State = require('./State.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Vehicle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.subclass = null;
      this.type = null;
      this.param = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('subclass')) {
        this.subclass = initObj.subclass
      }
      else {
        this.subclass = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('param')) {
        this.param = initObj.param
      }
      else {
        this.param = new VehicleParam();
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new State();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Vehicle
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.id, buffer, bufferOffset);
    // Serialize message field [subclass]
    bufferOffset = std_msgs.msg.String.serialize(obj.subclass, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = std_msgs.msg.String.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [param]
    bufferOffset = VehicleParam.serialize(obj.param, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = State.serialize(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Vehicle
    let len;
    let data = new Vehicle(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [subclass]
    data.subclass = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [param]
    data.param = VehicleParam.deserialize(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = State.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += std_msgs.msg.String.getMessageSize(object.subclass);
    length += std_msgs.msg.String.getMessageSize(object.type);
    length += State.getMessageSize(object.state);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vehicle_msgs/Vehicle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0372a2fa6275905a037fbc1ca20c1ad6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    std_msgs/Int32 id
    std_msgs/String subclass
    std_msgs/String type
    VehicleParam param
    State state
    
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
    const resolved = new Vehicle(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = std_msgs.msg.Int32.Resolve(msg.id)
    }
    else {
      resolved.id = new std_msgs.msg.Int32()
    }

    if (msg.subclass !== undefined) {
      resolved.subclass = std_msgs.msg.String.Resolve(msg.subclass)
    }
    else {
      resolved.subclass = new std_msgs.msg.String()
    }

    if (msg.type !== undefined) {
      resolved.type = std_msgs.msg.String.Resolve(msg.type)
    }
    else {
      resolved.type = new std_msgs.msg.String()
    }

    if (msg.param !== undefined) {
      resolved.param = VehicleParam.Resolve(msg.param)
    }
    else {
      resolved.param = new VehicleParam()
    }

    if (msg.state !== undefined) {
      resolved.state = State.Resolve(msg.state)
    }
    else {
      resolved.state = new State()
    }

    return resolved;
    }
};

module.exports = Vehicle;
