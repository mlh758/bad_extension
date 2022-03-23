require 'ffi'

# Examples of using this:
#   require_relative './test.rb'
#   PasswordLib.checkPassword('foo')
#   => 0
#   PasswordLib.checkPassword("supersecretyou'llneverguessitpassword")
#   => 1
#   PasswordLib.checkPassword("A" * 505)
#   => 0 ??? this should have flowed over into the integer by now
#   PasswordLib.checkPassword("A" * 509)
#   => lol seg fault
#   
module PasswordLib
  extend FFI::Library
  ffi_lib '/Users/mharris/GitHub/bad_extension/libPasswordExt.dylib'
  attach_function(:checkPassword, [:string], :int)
end