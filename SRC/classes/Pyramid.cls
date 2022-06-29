/**
* Description   - Pyramid(Using One loop Only)
*
* Created by    - Sagar Nirwal
*
* Created Date  - 22/06/2022
*
* Revision log  -  V_1.0 - Created  - Youe name - Date
*                  V_1.1 - Modified - Youe Name - Date - Details what you modified
*
**/
public with sharing class Pyramid {
    /**   Description :   Pyramid Using One Loop
    *
    *     Created By  :   Sagar Nirwal
    *
    *     Arguments   :   integers to diaplay number of rows 
    *
    *     Return      :   void
    *
    *     Revision log:   V_1.0 - Created  - Youe name - Date
    *                     V_1.1 - Modified - Youe Name - Date - Details what you modified
    * 
    **/
    public Pyramid(integer n) 
    {
        integer j=0;
        // Loop to print desired pattern
        string s = ' ';
        string b = '  ';
        for ( integer i = n; i >= 1;)
        {
            // current line number
            if (j < i-1)
            {
                s = s + preserveWhitespace(b);
                j++;
                continue;
            }
			if(j < (2*n-i)){
				s = s + '* ';
				j++;
				continue;
			}
			
            // Else time to print a new line
            if (j == (2*n-i))
            {
                s = s + '';
                i--;
                j = 0;
                system.debug(s);
                s = preserveWhitespace(b);
            }
        }
    }
    /**   Description :   Pyramid Using One Loop
    *
    *     Created By  :   Sagar Nirwal
    *
    *     Arguments   :   String passing a space for the conversion into character 
    *
    *     Return      :   return String 
    *
    *     Revision log:   V_1.0 - Created  - Youe name - Date
    *                     V_1.1 - Modified - Youe Name - Date - Details what you modified
    * 
    **/
    public static String preserveWhitespace(String s){
        if(s!= null)
           s = s.replace(' ',String.fromCharArray( new Integer[] { 160 }));
    
        return s;
    }
}