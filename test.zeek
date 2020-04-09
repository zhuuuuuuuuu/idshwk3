global x: table[Addr] of set[userAgent]  = {};
event http_header (c: connection, is_orig: bool, name: string, value: string)
{
  if(name="User-Agent")
  {
    
  }
}
event zeek_done()
{
}
