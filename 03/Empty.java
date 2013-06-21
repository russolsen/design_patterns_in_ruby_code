

public class Empty 
{

  public boolean isEmpty(String s)
  {
    return s.length() == 0;
  }

  public void doit(String s)
  {
    System.out.println( "For string [" + s + "] empty = " + isEmpty(s) );
  }

  public static void main(String[] args)
  {
    Empty empty = new Empty();

    empty.doit("foo");
    empty.doit("bar");
    empty.doit("");
  }
}
