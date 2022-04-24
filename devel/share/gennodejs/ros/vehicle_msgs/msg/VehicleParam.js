// Auto-generated. Do not edit!

// (in-package vehicle_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VehicleParam {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.width = null;
      this.length = null;
      this.wheel_base = null;
      this.front_suspension = null;
      this.rear_suspension = null;
      this.max_steering_angle = null;
      this.d_cr = null;
      this.max_longitudinal_acc = null;
      this.max_lateral_acc = null;
    }
    else {
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('wheel_base')) {
        this.wheel_base = initObj.wheel_base
      }
      else {
        this.wheel_base = 0.0;
      }
      if (initObj.hasOwnProperty('front_suspension')) {
        this.front_suspension = initObj.front_suspension
      }
      else {
        this.front_suspension = 0.0;
      }
      if (initObj.hasOwnProperty('rear_suspension')) {
        this.rear_suspension = initObj.rear_suspension
      }
      else {
        this.rear_suspension = 0.0;
      }
      if (initObj.hasOwnProperty('max_steering_angle')) {
        this.max_steering_angle = initObj.max_steering_angle
      }
      else {
        this.max_steering_angle = 0.0;
      }
      if (initObj.hasOwnProperty('d_cr')) {
        this.d_cr = initObj.d_cr
      }
      else {
        this.d_cr = 0.0;
      }
      if (initObj.hasOwnProperty('max_longitudinal_acc')) {
        this.max_longitudinal_acc = initObj.max_longitudinal_acc
      }
      else {
        this.max_longitudinal_acc = 0.0;
      }
      if (initObj.hasOwnProperty('max_lateral_acc')) {
        this.max_lateral_acc = initObj.max_lateral_acc
      }
      else {
        this.max_lateral_acc = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleParam
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [wheel_base]
    bufferOffset = _serializer.float32(obj.wheel_base, buffer, bufferOffset);
    // Serialize message field [front_suspension]
    bufferOffset = _serializer.float32(obj.front_suspension, buffer, bufferOffset);
    // Serialize message field [rear_suspension]
    bufferOffset = _serializer.float32(obj.rear_suspension, buffer, bufferOffset);
    // Serialize message field [max_steering_angle]
    bufferOffset = _serializer.float32(obj.max_steering_angle, buffer, bufferOffset);
    // Serialize message field [d_cr]
    bufferOffset = _serializer.float32(obj.d_cr, buffer, bufferOffset);
    // Serialize message field [max_longitudinal_acc]
    bufferOffset = _serializer.float32(obj.max_longitudinal_acc, buffer, bufferOffset);
    // Serialize message field [max_lateral_acc]
    bufferOffset = _serializer.float32(obj.max_lateral_acc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleParam
    let len;
    let data = new VehicleParam(null);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheel_base]
    data.wheel_base = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [front_suspension]
    data.front_suspension = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rear_suspension]
    data.rear_suspension = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_steering_angle]
    data.max_steering_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [d_cr]
    data.d_cr = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_longitudinal_acc]
    data.max_longitudinal_acc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_lateral_acc]
    data.max_lateral_acc = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vehicle_msgs/VehicleParam';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ae2d3cebe7d183488a1456621a86eab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleParam(null);
    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.wheel_base !== undefined) {
      resolved.wheel_base = msg.wheel_base;
    }
    else {
      resolved.wheel_base = 0.0
    }

    if (msg.front_suspension !== undefined) {
      resolved.front_suspension = msg.front_suspension;
    }
    else {
      resolved.front_suspension = 0.0
    }

    if (msg.rear_suspension !== undefined) {
      resolved.rear_suspension = msg.rear_suspension;
    }
    else {
      resolved.rear_suspension = 0.0
    }

    if (msg.max_steering_angle !== undefined) {
      resolved.max_steering_angle = msg.max_steering_angle;
    }
    else {
      resolved.max_steering_angle = 0.0
    }

    if (msg.d_cr !== undefined) {
      resolved.d_cr = msg.d_cr;
    }
    else {
      resolved.d_cr = 0.0
    }

    if (msg.max_longitudinal_acc !== undefined) {
      resolved.max_longitudinal_acc = msg.max_longitudinal_acc;
    }
    else {
      resolved.max_longitudinal_acc = 0.0
    }

    if (msg.max_lateral_acc !== undefined) {
      resolved.max_lateral_acc = msg.max_lateral_acc;
    }
    else {
      resolved.max_lateral_acc = 0.0
    }

    return resolved;
    }
};

module.exports = VehicleParam;
