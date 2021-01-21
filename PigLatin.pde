public void setup() 
{
  String[] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}

public int findFirstVowel(String sWord)
{
  for (int i = 0; i < sWord.length(); i++)
  {
    if (sWord.substring(i, i+1).equals("a"))
    {
      return i;
    }
    if (sWord.substring(i, i+1).equals("e"))
    {
      return i;
    }
    if (sWord.substring(i, i+1).equals("i"))
    {
      return i;
    }
    if (sWord.substring(i, i+1).equals("o"))
    {
      return i;
    }
    if (sWord.substring(i, i+1).equals("u"))
    {
      return i;
    }
  }
  return -1;
}

public String pigLatin(String sWord)
{
  if(sWord.substring(0, 2).equals("qu"))
  {
    return sWord.substring(findFirstVowel(sWord)+1, sWord.length()) + sWord.substring(0, findFirstVowel(sWord)+1) + "ay";
  }
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  else if(findFirstVowel(sWord) == 0)
  {
    return sWord + "way";
  }
  else
  {
    return sWord.substring(findFirstVowel(sWord), sWord.length()) + sWord.substring(0, findFirstVowel(sWord)) + "ay";
  }
}
