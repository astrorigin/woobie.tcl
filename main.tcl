# Woobie module for demonstrating EggPlug

namespace eval ::github.com {
namespace eval astrorigin {
namespace eval woobie {

set configvars [list the_command the_message]

# check needed config vars exist
if {[::EggPlug::checkexist ::github.com::astrorigin::woobie $configvars]} {
    bind pub -|- "!$the_command" ::github.com::astrorigin::woobie::handler
    putlog "Script woobie.tcl loaded!"
} else {
    putlog "Bad config :("
}

proc handler { nik uhost hand chann txt } {
    variable the_message
    puthelp "PRIVMSG $chann :$the_message"
}


} ;# end namespace woobie
} ;# end namespace astrorigin
} ;# end namespace ::github.com

# vi: set sw=4 ts=4 et
