// Auto-generated. Do not edit!

// (in-package mcl_3dl_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class LoadPCDRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pcd_path = null;
    }
    else {
      if (initObj.hasOwnProperty('pcd_path')) {
        this.pcd_path = initObj.pcd_path
      }
      else {
        this.pcd_path = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoadPCDRequest
    // Serialize message field [pcd_path]
    bufferOffset = _serializer.string(obj.pcd_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoadPCDRequest
    let len;
    let data = new LoadPCDRequest(null);
    // Deserialize message field [pcd_path]
    data.pcd_path = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.pcd_path);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mcl_3dl_msgs/LoadPCDRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '89d85a975322d7866dba283fe6c40322';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string pcd_path
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LoadPCDRequest(null);
    if (msg.pcd_path !== undefined) {
      resolved.pcd_path = msg.pcd_path;
    }
    else {
      resolved.pcd_path = ''
    }

    return resolved;
    }
};

class LoadPCDResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoadPCDResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoadPCDResponse
    let len;
    let data = new LoadPCDResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mcl_3dl_msgs/LoadPCDResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LoadPCDResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: LoadPCDRequest,
  Response: LoadPCDResponse,
  md5sum() { return 'b8646510804710605aeee202394f2fcf'; },
  datatype() { return 'mcl_3dl_msgs/LoadPCD'; }
};
