global x: table[addr] of set[string]  = {};
event http_header (c: connection, is_orig: bool, name: string, value: string)
{
  if(name=="User-Agent")
  {
    if(c$id$orig_h in x)
    {
      add x[c$id$orig_h][to_lower(value)];
    }
    else
    {
      x[c$id$orig_h]=set(to_lower(value));
     }

  }
}
event zeek_done()
{
  for (Addr, userAgent in x)
	{
		if(|userAgent|>=3)
		{
			print fmt("%s is a proxy",Addr);
		}
	}
}

