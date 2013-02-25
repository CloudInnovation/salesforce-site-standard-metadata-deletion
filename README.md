Delete Salesforce standard Site content
=======================================

This is an Apache ANT script using the Salesforce Metadata API, that makes deleting of the standard Salesforce site content a breeze, compared to manually deleting all content. You only need 2 simple commands, and a few steps.

Install Apache ANT and the Salesforce Metadata Jar
--------------------------------------------------

Before being able to use the script, you need to have Java, Apache ANT and the Salesforce Metadata Jar installed, more about that in the Salesforce.com documentation: [Force.com Migration Tool Guide](http://www.salesforce.com/us/developer/docs/daas/salesforce_migration_guide.pdf)

Create your site
----------------

Next you create your Salesforce Site, by creating your site, salesforce generates Apex Classes, VisualForce Components, VisualForce Pages and a Static Resource. Next you change the Site's error pages, and remove all the default pages, replace them with your own.

Make a backup
-------------

Navigate to the directory where you extracted the files.
Before deleting everything, if you want you can make a backup of all the standard components by doing the following commands:
```ant retrieve```

Deploy empty files
------------------

Because of cross references you can't actually delete everything first, so you must deploy empty values of the files, before being able to delete
```ant deployempty```

Delete the files
----------------

Finally the point we have been waiting for, deleteing the content.
```ant delete```