set str "abc:def:ghi"
abc:def:ghi
split $str :
abc def ghi
llength [split $str :]
3