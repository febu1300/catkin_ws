// Auto-generated. Do not edit!

// (in-package aruco.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Marker {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.posx = null;
      this.posy = null;
      this.posz = null;
      this.rotx = null;
      this.roty = null;
      this.rotz = null;
      this.size = null;
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('posx')) {
        this.posx = initObj.posx
      }
      else {
        this.posx = 0.0;
      }
      if (initObj.hasOwnProperty('posy')) {
        this.posy = initObj.posy
      }
      else {
        this.posy = 0.0;
      }
      if (initObj.hasOwnProperty('posz')) {
        this.posz = initObj.posz
      }
      else {
        this.posz = 0.0;
      }
      if (initObj.hasOwnProperty('rotx')) {
        this.rotx = initObj.rotx
      }
      else {
        this.rotx = 0.0;
      }
      if (initObj.hasOwnProperty('roty')) {
        this.roty = initObj.roty
      }
      else {
        this.roty = 0.0;
      }
      if (initObj.hasOwnProperty('rotz')) {
        this.rotz = initObj.rotz
      }
      else {
        this.rotz = 0.0;
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0.0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Marker
    // Serialize message field [posx]
    bufferOffset = _serializer.float64(obj.posx, buffer, bufferOffset);
    // Serialize message field [posy]
    bufferOffset = _serializer.float64(obj.posy, buffer, bufferOffset);
    // Serialize message field [posz]
    bufferOffset = _serializer.float64(obj.posz, buffer, bufferOffset);
    // Serialize message field [rotx]
    bufferOffset = _serializer.float64(obj.rotx, buffer, bufferOffset);
    // Serialize message field [roty]
    bufferOffset = _serializer.float64(obj.roty, buffer, bufferOffset);
    // Serialize message field [rotz]
    bufferOffset = _serializer.float64(obj.rotz, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = _serializer.float64(obj.size, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Marker
    let len;
    let data = new Marker(null);
    // Deserialize message field [posx]
    data.posx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [posy]
    data.posy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [posz]
    data.posz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rotx]
    data.rotx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roty]
    data.roty = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rotz]
    data.rotz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'aruco/Marker';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bf2cecebc9afd48ac2cbae7c86d68949';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 posx
    float64 posy
    float64 posz
    float64 rotx
    float64 roty
    float64 rotz
    float64 size
    int32 id
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Marker(null);
    if (msg.posx !== undefined) {
      resolved.posx = msg.posx;
    }
    else {
      resolved.posx = 0.0
    }

    if (msg.posy !== undefined) {
      resolved.posy = msg.posy;
    }
    else {
      resolved.posy = 0.0
    }

    if (msg.posz !== undefined) {
      resolved.posz = msg.posz;
    }
    else {
      resolved.posz = 0.0
    }

    if (msg.rotx !== undefined) {
      resolved.rotx = msg.rotx;
    }
    else {
      resolved.rotx = 0.0
    }

    if (msg.roty !== undefined) {
      resolved.roty = msg.roty;
    }
    else {
      resolved.roty = 0.0
    }

    if (msg.rotz !== undefined) {
      resolved.rotz = msg.rotz;
    }
    else {
      resolved.rotz = 0.0
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0.0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

module.exports = Marker;
