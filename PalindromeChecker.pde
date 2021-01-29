public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  String a = "";
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    a = noCapitals(onlyLetters(lines[i]));
    if(isPalindrome(a)==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean isPalindrome(String sWord){
  if(reverse(sWord).equals(sWord))
    return true;
  return false;
}
public String reverse(String sWord){
  String s = "";
  for (int i = 0; i < sWord.length(); i++)  {
    s += sWord.substring(sWord.length() - 1 - i, sWord.length() - i);
  }
  return s;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
public String onlyLetters(String sString){
  String x = "";
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i)) == true){
      x+= sString.charAt(i);
    }
  }
  return x;
}

