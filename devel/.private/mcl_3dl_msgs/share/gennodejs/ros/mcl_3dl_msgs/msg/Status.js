// Auto-generated. Do not edit!

// (in-package mcl_3dl_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.status = null;
      this.error = null;
      this.convergence_status = null;
      this.particle_size = null;
      this.match_ratio = null;
      this.entropy = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = 0;
      }
      if (initObj.hasOwnProperty('convergence_status')) {
        this.convergence_status = initObj.convergence_status
      }
      else {
        this.convergence_status = 0;
      }
      if (initObj.hasOwnProperty('particle_size')) {
        this.particle_size = initObj.particle_size
      }
      else {
        this.particle_size = 0;
      }
      if (initObj.hasOwnProperty('match_ratio')) {
        this.match_ratio = initObj.match_ratio
      }
      else {
        this.match_ratio = 0.0;
      }
      if (initObj.hasOwnProperty('entropy')) {
        this.entropy = initObj.entropy
      }
      else {
        this.entropy = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Status
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.uint8(obj.error, buffer, bufferOffset);
    // Serialize message field [convergence_status]
    bufferOffset = _serializer.uint8(obj.convergence_status, buffer, bufferOffset);
    // Serialize message field [particle_size]
    bufferOffset = _serializer.uint32(obj.particle_size, buffer, bufferOffset);
    // Serialize message field [match_ratio]
    bufferOffset = _serializer.float32(obj.match_ratio, buffer, bufferOffset);
    // Serialize message field [entropy]
    bufferOffset = _serializer.float32(obj.entropy, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Status
    let len;
    let data = new Status(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [convergence_status]
    data.convergence_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [particle_size]
    data.particle_size = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [match_ratio]
    data.match_ratio = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [entropy]
    data.entropy = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mcl_3dl_msgs/Status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f47002d781357aed0b4c4738b39ef49a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    # status definitions
    
    uint8 NORMAL = 0
    uint8 GLOBAL_LOCALIZATION = 1
    uint8 EXPANSION_RESETTING = 2
    
    uint8 status
    
    # error definitions
    
    uint8 ERROR_NORMAL = 0
    uint8 ERROR_POINTS_NOT_FOUND = 1
    
    uint8 error
    
    # convergence status definitions
    
    uint8 CONVERGENCE_STATUS_NORMAL = 0
    uint8 CONVERGENCE_STATUS_CONVERGED = 1
    uint8 CONVERGENCE_STATUS_LARGE_STD_VALUE = 2
    
    uint8 convergence_status
    
    uint32 particle_size
    float32 match_ratio
    float32 entropy
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Status(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = 0
    }

    if (msg.convergence_status !== undefined) {
      resolved.convergence_status = msg.convergence_status;
    }
    else {
      resolved.convergence_status = 0
    }

    if (msg.particle_size !== undefined) {
      resolved.particle_size = msg.particle_size;
    }
    else {
      resolved.particle_size = 0
    }

    if (msg.match_ratio !== undefined) {
      resolved.match_ratio = msg.match_ratio;
    }
    else {
      resolved.match_ratio = 0.0
    }

    if (msg.entropy !== undefined) {
      resolved.entropy = msg.entropy;
    }
    else {
      resolved.entropy = 0.0
    }

    return resolved;
    }
};

// Constants for message
Status.Constants = {
  NORMAL: 0,
  GLOBAL_LOCALIZATION: 1,
  EXPANSION_RESETTING: 2,
  ERROR_NORMAL: 0,
  ERROR_POINTS_NOT_FOUND: 1,
  CONVERGENCE_STATUS_NORMAL: 0,
  CONVERGENCE_STATUS_CONVERGED: 1,
  CONVERGENCE_STATUS_LARGE_STD_VALUE: 2,
}

module.exports = Status;
