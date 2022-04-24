// Auto-generated. Do not edit!

// (in-package vehicle_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Lane {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.dir = null;
      this.child_id = null;
      this.father_id = null;
      this.l_lane_id = null;
      this.l_change_avbl = null;
      this.r_lane_id = null;
      this.r_change_avbl = null;
      this.behavior = null;
      this.length = null;
      this.start_point = null;
      this.final_point = null;
      this.points = null;
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
        this.id = 0;
      }
      if (initObj.hasOwnProperty('dir')) {
        this.dir = initObj.dir
      }
      else {
        this.dir = 0;
      }
      if (initObj.hasOwnProperty('child_id')) {
        this.child_id = initObj.child_id
      }
      else {
        this.child_id = [];
      }
      if (initObj.hasOwnProperty('father_id')) {
        this.father_id = initObj.father_id
      }
      else {
        this.father_id = [];
      }
      if (initObj.hasOwnProperty('l_lane_id')) {
        this.l_lane_id = initObj.l_lane_id
      }
      else {
        this.l_lane_id = 0;
      }
      if (initObj.hasOwnProperty('l_change_avbl')) {
        this.l_change_avbl = initObj.l_change_avbl
      }
      else {
        this.l_change_avbl = false;
      }
      if (initObj.hasOwnProperty('r_lane_id')) {
        this.r_lane_id = initObj.r_lane_id
      }
      else {
        this.r_lane_id = 0;
      }
      if (initObj.hasOwnProperty('r_change_avbl')) {
        this.r_change_avbl = initObj.r_change_avbl
      }
      else {
        this.r_change_avbl = false;
      }
      if (initObj.hasOwnProperty('behavior')) {
        this.behavior = initObj.behavior
      }
      else {
        this.behavior = '';
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('start_point')) {
        this.start_point = initObj.start_point
      }
      else {
        this.start_point = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('final_point')) {
        this.final_point = initObj.final_point
      }
      else {
        this.final_point = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Lane
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [dir]
    bufferOffset = _serializer.int32(obj.dir, buffer, bufferOffset);
    // Serialize message field [child_id]
    bufferOffset = _arraySerializer.int32(obj.child_id, buffer, bufferOffset, null);
    // Serialize message field [father_id]
    bufferOffset = _arraySerializer.int32(obj.father_id, buffer, bufferOffset, null);
    // Serialize message field [l_lane_id]
    bufferOffset = _serializer.int32(obj.l_lane_id, buffer, bufferOffset);
    // Serialize message field [l_change_avbl]
    bufferOffset = _serializer.bool(obj.l_change_avbl, buffer, bufferOffset);
    // Serialize message field [r_lane_id]
    bufferOffset = _serializer.int32(obj.r_lane_id, buffer, bufferOffset);
    // Serialize message field [r_change_avbl]
    bufferOffset = _serializer.bool(obj.r_change_avbl, buffer, bufferOffset);
    // Serialize message field [behavior]
    bufferOffset = _serializer.string(obj.behavior, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [start_point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.start_point, buffer, bufferOffset);
    // Serialize message field [final_point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.final_point, buffer, bufferOffset);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Lane
    let len;
    let data = new Lane(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dir]
    data.dir = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [child_id]
    data.child_id = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [father_id]
    data.father_id = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [l_lane_id]
    data.l_lane_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [l_change_avbl]
    data.l_change_avbl = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [r_lane_id]
    data.r_lane_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [r_change_avbl]
    data.r_change_avbl = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [behavior]
    data.behavior = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [start_point]
    data.start_point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [final_point]
    data.final_point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.child_id.length;
    length += 4 * object.father_id.length;
    length += _getByteLength(object.behavior);
    length += 24 * object.points.length;
    return length + 86;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vehicle_msgs/Lane';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '34fa6f4e572e18530e0aa845f18bc92d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int32 id
    int32 dir
    
    int32[] child_id
    int32[] father_id
    
    int32 l_lane_id
    bool l_change_avbl
    
    int32 r_lane_id
    bool r_change_avbl
    
    string behavior
    
    float32 length
    
    geometry_msgs/Point start_point
    geometry_msgs/Point final_point
    
    geometry_msgs/Point[] points
    
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
    const resolved = new Lane(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.dir !== undefined) {
      resolved.dir = msg.dir;
    }
    else {
      resolved.dir = 0
    }

    if (msg.child_id !== undefined) {
      resolved.child_id = msg.child_id;
    }
    else {
      resolved.child_id = []
    }

    if (msg.father_id !== undefined) {
      resolved.father_id = msg.father_id;
    }
    else {
      resolved.father_id = []
    }

    if (msg.l_lane_id !== undefined) {
      resolved.l_lane_id = msg.l_lane_id;
    }
    else {
      resolved.l_lane_id = 0
    }

    if (msg.l_change_avbl !== undefined) {
      resolved.l_change_avbl = msg.l_change_avbl;
    }
    else {
      resolved.l_change_avbl = false
    }

    if (msg.r_lane_id !== undefined) {
      resolved.r_lane_id = msg.r_lane_id;
    }
    else {
      resolved.r_lane_id = 0
    }

    if (msg.r_change_avbl !== undefined) {
      resolved.r_change_avbl = msg.r_change_avbl;
    }
    else {
      resolved.r_change_avbl = false
    }

    if (msg.behavior !== undefined) {
      resolved.behavior = msg.behavior;
    }
    else {
      resolved.behavior = ''
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.start_point !== undefined) {
      resolved.start_point = geometry_msgs.msg.Point.Resolve(msg.start_point)
    }
    else {
      resolved.start_point = new geometry_msgs.msg.Point()
    }

    if (msg.final_point !== undefined) {
      resolved.final_point = geometry_msgs.msg.Point.Resolve(msg.final_point)
    }
    else {
      resolved.final_point = new geometry_msgs.msg.Point()
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = geometry_msgs.msg.Point.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    return resolved;
    }
};

module.exports = Lane;
