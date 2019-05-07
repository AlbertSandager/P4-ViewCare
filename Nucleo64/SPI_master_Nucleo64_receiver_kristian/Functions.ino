void convertLong2bit24vector(long val)
{
  for (int i=0; i<3 ; i++) {
  bit24val[i]=lowByte(val);
  val = val >> 8;
  }
}
