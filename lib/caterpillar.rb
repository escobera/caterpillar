#--
# (c) Copyright 2008 Mikael Lammentausta
# See the file LICENSES.txt included with the distribution for
# software license details.
#++

module Caterpillar
  VERSION='0.9.1'
end

this_file = File.symlink?(__FILE__) ? File.readlink(__FILE__) : __FILE__
this_dir = File.dirname(File.expand_path(this_file))

CATERPILLAR_LIBS=this_dir

require 'find'

# include all ruby files
Find.find(this_dir) do |file|
  if FileTest.directory?(file)
    if File.basename(file) == 'deprecated'
      Find.prune # Don't look any further into this directory.
    else
      next
    end
  else
    # do not require this file twice
    require file if file[/.rb$/] and File.basename(file) != File.basename(this_file)
  end
end
