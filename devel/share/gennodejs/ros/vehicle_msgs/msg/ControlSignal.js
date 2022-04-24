// Auto-generated. Do not edit!

// (in-package vehicle_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let State = require('./State.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ControlSignal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.acc = null;
      this.steer_rate = null;
      this.is_openloop = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('acc')) {
        this.acc = initObj.acc
      }
      else {
        this.acc = 0.0;
      }
      if (initObj.hasOwnProperty('steer_rate')) {
        this.steer_rate = initObj.steer_rate
      }
      else {
        this.steer_rate = 0.0;
      }
      if (initObj.hasOwnProperty('is_openloop')) {
        this.is_openloop = initObj.is_openloop
      }
      else {
        this.is_openloop = new std_msgs.msg.Bool();
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
    // Serializes a message object of type ControlSignal
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [acc]
    bufferOffset = _serializer.float64(obj.acc, buffer, bufferOffset);
    // Serialize message field [steer_rate]
    bufferOffset = _serializer.float64(obj.steer_rate, buffer, bufferOffset);
    // Serialize message field [is_openloop]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.is_openloop, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = State.serialize(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlSignal
    let len;
    let data = new ControlSignal(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [acc]
    data.acc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steer_rate]
    data.steer_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [is_openloop]
    data.is_openloop = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = State.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += State.getMessageSize(object.state);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vehicle_msgs/ControlSignal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8714632b2f2dd9804baa230415c4a66e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64 acc
    float64 steer_rate
    
    # if open_loop is set, use the state as desired state 
    # and omit the control loop
    std_msgs/Bool is_openloop
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
    MSG: std_msgs/Bool
    bool data
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
    const resolved = new ControlSignal(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.acc !== undefined) {
      resolved.acc = msg.acc;
    }
    else {
      resolved.acc = 0.0
    }

    if (msg.steer_rate !== undefined) {
      resolved.steer_rate = msg.steer_rate;
    }
    else {
      resolved.steer_rate = 0.0
    }

    if (msg.is_openloop !== undefined) {
      resolved.is_openloop = std_msgs.msg.Bool.Resolve(msg.is_openloop)
    }
    else {
      resolved.is_openloop = new std_msgs.msg.Bool()
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

module.exports = ControlSignal;
