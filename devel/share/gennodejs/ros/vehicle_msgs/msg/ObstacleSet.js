// Auto-generated. Do not edit!

// (in-package vehicle_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CircleObstacle = require('./CircleObstacle.js');
let PolygonObstacle = require('./PolygonObstacle.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ObstacleSet {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.obs_circle = null;
      this.obs_polygon = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('obs_circle')) {
        this.obs_circle = initObj.obs_circle
      }
      else {
        this.obs_circle = [];
      }
      if (initObj.hasOwnProperty('obs_polygon')) {
        this.obs_polygon = initObj.obs_polygon
      }
      else {
        this.obs_polygon = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObstacleSet
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [obs_circle]
    // Serialize the length for message field [obs_circle]
    bufferOffset = _serializer.uint32(obj.obs_circle.length, buffer, bufferOffset);
    obj.obs_circle.forEach((val) => {
      bufferOffset = CircleObstacle.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [obs_polygon]
    // Serialize the length for message field [obs_polygon]
    bufferOffset = _serializer.uint32(obj.obs_polygon.length, buffer, bufferOffset);
    obj.obs_polygon.forEach((val) => {
      bufferOffset = PolygonObstacle.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObstacleSet
    let len;
    let data = new ObstacleSet(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [obs_circle]
    // Deserialize array length for message field [obs_circle]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obs_circle = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obs_circle[i] = CircleObstacle.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [obs_polygon]
    // Deserialize array length for message field [obs_polygon]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obs_polygon = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obs_polygon[i] = PolygonObstacle.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.obs_circle.forEach((val) => {
      length += CircleObstacle.getMessageSize(val);
    });
    object.obs_polygon.forEach((val) => {
      length += PolygonObstacle.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vehicle_msgs/ObstacleSet';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '64fa1aba570dc974a6d7fcb2a16d7851';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    CircleObstacle[] obs_circle
    PolygonObstacle[] obs_polygon
    
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
    MSG: vehicle_msgs/CircleObstacle
    Header header
    
    int32 id
    Circle circle
    
    ================================================================================
    MSG: vehicle_msgs/Circle
    geometry_msgs/Point center
    float32 radius
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: vehicle_msgs/PolygonObstacle
    Header header
    
    int32 id
    geometry_msgs/Polygon polygon
    
    ================================================================================
    MSG: geometry_msgs/Polygon
    #A specification of a polygon where the first and last points are assumed to be connected
    Point32[] points
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObstacleSet(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.obs_circle !== undefined) {
      resolved.obs_circle = new Array(msg.obs_circle.length);
      for (let i = 0; i < resolved.obs_circle.length; ++i) {
        resolved.obs_circle[i] = CircleObstacle.Resolve(msg.obs_circle[i]);
      }
    }
    else {
      resolved.obs_circle = []
    }

    if (msg.obs_polygon !== undefined) {
      resolved.obs_polygon = new Array(msg.obs_polygon.length);
      for (let i = 0; i < resolved.obs_polygon.length; ++i) {
        resolved.obs_polygon[i] = PolygonObstacle.Resolve(msg.obs_polygon[i]);
      }
    }
    else {
      resolved.obs_polygon = []
    }

    return resolved;
    }
};

module.exports = ObstacleSet;
