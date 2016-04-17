#!/usr/bin/ruby

devices = ["Master","Speaker","Headphone"]
command = ARGV[0].downcase

devices.each do |d|
    mixer = 'amixer sset '+d
    if command == 'toggle'
        system mixer+' toggle'
    elsif command == 'increase'
        system mixer+' 3%+'
    elsif command == 'decrease'
        system mixer+' 3%-'
    end
end
