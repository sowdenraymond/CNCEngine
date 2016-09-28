#!/bin/ksh
# kernels       Script calling netwm to show kernel process stats
#
# Author:       Raymond Sowden <sowdenraymond@gmail.com>
#               
#
#
# description: awk and sed output from netwm to show kernel process statistics
# processname: kernels

netwm | grep kdef- | awk '{ print $8, $1, $4, $5, $6, $9, $10, $11}' | sed 's/kdef-1\b/JDENET RESERVED KERNEL/g' | sed 's/kdef-2\b/UBE KERNEL        /g' | sed 's/kdef-4\b/SECURITY KERNEL   /g' | sed 's/kdef-5\b/LOCK MANAGER KERNEL/g' | sed 's/kdef-6\b/CALL OBJECT KERNEL/g' | sed 's/kdef-7\b/JDBNET KERNEL/g' | sed 's/kdef-9\b/SAW KERNEL        /g' | sed 's/kdef-10\b/SCHEDULER KERNEL/g' | sed 's/kdef-11\b/PACKAGE BUILD KERNEL/g' | sed 's/kdef-12\b/UBE SUBSYSTEM KERNEL/g' | sed 's/kdef-13\b/WORK FLOW KERNEL  /g' | sed 's/kdef-14\b/QUEUE KERNEL      /g' | sed 's/kdef-15\b/XML TRANS KERNEL/g' | sed 's/kdef-16\b/XML LIST KERNEL/g' | sed 's/kdef-19\b/EVN KERNEL/g' | sed 's/kdef-20\b/IEO KERNEL/g' | sed 's/kdef-22\b/XML DISPATCH KERNEL/g' | sed 's/kdef-23\b/XTS KERNEL/g' | sed 's/kdef-24\b/XML SERVICE KERNEL/g' | sed 's/kdef-30\b/METADATA KERNEL   /g' | sed 's/kdef-31\b/XMLPUBLISHER KERNEL/g' | sed 's/kdef-32\b/MANAGEMENT KERNEL /g' | sed 's/kdef-34\b/TEXTSEARCH KERNEL /g';

