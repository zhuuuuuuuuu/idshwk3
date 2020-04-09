global x:
event http_header (c: connection, is_orig: bool, name: string, value: string)
{
  if(name="User-agent")
  {
    
  }
}
event zeek_done()
{
}
