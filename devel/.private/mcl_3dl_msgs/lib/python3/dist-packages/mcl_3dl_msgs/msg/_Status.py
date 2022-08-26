# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mcl_3dl_msgs/Status.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class Status(genpy.Message):
  _md5sum = "f47002d781357aed0b4c4738b39ef49a"
  _type = "mcl_3dl_msgs/Status"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header

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
"""
  # Pseudo-constants
  NORMAL = 0
  GLOBAL_LOCALIZATION = 1
  EXPANSION_RESETTING = 2
  ERROR_NORMAL = 0
  ERROR_POINTS_NOT_FOUND = 1
  CONVERGENCE_STATUS_NORMAL = 0
  CONVERGENCE_STATUS_CONVERGED = 1
  CONVERGENCE_STATUS_LARGE_STD_VALUE = 2

  __slots__ = ['header','status','error','convergence_status','particle_size','match_ratio','entropy']
  _slot_types = ['std_msgs/Header','uint8','uint8','uint8','uint32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,status,error,convergence_status,particle_size,match_ratio,entropy

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Status, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.status is None:
        self.status = 0
      if self.error is None:
        self.error = 0
      if self.convergence_status is None:
        self.convergence_status = 0
      if self.particle_size is None:
        self.particle_size = 0
      if self.match_ratio is None:
        self.match_ratio = 0.
      if self.entropy is None:
        self.entropy = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.status = 0
      self.error = 0
      self.convergence_status = 0
      self.particle_size = 0
      self.match_ratio = 0.
      self.entropy = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3BI2f().pack(_x.status, _x.error, _x.convergence_status, _x.particle_size, _x.match_ratio, _x.entropy))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 15
      (_x.status, _x.error, _x.convergence_status, _x.particle_size, _x.match_ratio, _x.entropy,) = _get_struct_3BI2f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3BI2f().pack(_x.status, _x.error, _x.convergence_status, _x.particle_size, _x.match_ratio, _x.entropy))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 15
      (_x.status, _x.error, _x.convergence_status, _x.particle_size, _x.match_ratio, _x.entropy,) = _get_struct_3BI2f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3BI2f = None
def _get_struct_3BI2f():
    global _struct_3BI2f
    if _struct_3BI2f is None:
        _struct_3BI2f = struct.Struct("<3BI2f")
    return _struct_3BI2f
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I