##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Pantheon" do
author "Brendan Coles <bcoles@gmail.com>" # 2012-08-29
version "0.1"
description "Pantheon - Homepage: https://www.getpantheon.com/"

# ShodanHQ results as at 2012-09-29 #
# 17 for x-pantheon-edge-server

# Examples #
examples %w|
50.57.202.16
50.57.227.82
50.56.48.73
108.166.107.229
50.57.75.55
50.57.148.219
|

# Matches #
matches [

# x-pantheon-edge-server Header
{ :search=>"headers[x-pantheon-edge-server]", :string=>/^(.*)$/ },

# 404 message
{ :search=>"headers", :regexp=>/HTTP\/1\.[01] 404 Unknown site\!/ },

]

end

