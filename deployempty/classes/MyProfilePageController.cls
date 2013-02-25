/**
 * An apex class that keeps updates of a portal user in sync with its corresponding contact.
   Guest users are never able to access this page.
 */
public with sharing class MyProfilePageController {

   static testmethod void test()
   {
        new MyProfilePageController();
   }

}