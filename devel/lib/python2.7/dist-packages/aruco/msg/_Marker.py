# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from aruco/Marker.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Marker(genpy.Message):
  _md5sum = "bf2cecebc9afd48ac2cbae7c86d68949"
  _type = "aruco/Marker"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float64 posx
float64 posy
float64 posz
float64 rotx
float64 roty
float64 rotz
float64 size
int32 id"""
  __slots__ = ['posx','posy','posz','rotx','roty','rotz','size','id']
  _slot_types = ['float64','float64','float64','float64','float64','float64','float64','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       posx,posy,posz,rotx,roty,rotz,size,id

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Marker, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.posx is None:
        self.posx = 0.
      if self.posy is None:
        self.posy = 0.
      if self.posz is None:
        self.posz = 0.
      if self.rotx is None:
        self.rotx = 0.
      if self.roty is None:
        self.roty = 0.
      if self.rotz is None:
        self.rotz = 0.
      if self.size is None:
        self.size = 0.
      if self.id is None:
        self.id = 0
    else:
      self.posx = 0.
      self.posy = 0.
      self.posz = 0.
      self.rotx = 0.
      self.roty = 0.
      self.rotz = 0.
      self.size = 0.
      self.id = 0

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
      buff.write(_get_struct_7di().pack(_x.posx, _x.posy, _x.posz, _x.rotx, _x.roty, _x.rotz, _x.size, _x.id))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 60
      (_x.posx, _x.posy, _x.posz, _x.rotx, _x.roty, _x.rotz, _x.size, _x.id,) = _get_struct_7di().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_7di().pack(_x.posx, _x.posy, _x.posz, _x.rotx, _x.roty, _x.rotz, _x.size, _x.id))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 60
      (_x.posx, _x.posy, _x.posz, _x.rotx, _x.roty, _x.rotz, _x.size, _x.id,) = _get_struct_7di().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7di = None
def _get_struct_7di():
    global _struct_7di
    if _struct_7di is None:
        _struct_7di = struct.Struct("<7di")
    return _struct_7di
