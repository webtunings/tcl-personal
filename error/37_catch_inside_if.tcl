
proc catchTest { num1 num2 } {
  if { [catch { expr { $num1/$num2 } } result ]  } {
      puts stderr "$result"
  } else { 
   puts "command executed successfully. result= $result"
}

}

catchTest 4 0
divide by zero
catchTest 4 2
command executed successfully. result= 2

