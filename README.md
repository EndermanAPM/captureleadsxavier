# captureleadsxavier

About
===
CaptureleadsXavier is a basic Prestashop 1.6 compliant module that aims to accomplish
the Ecomm360's objectives.


    
<br>
<details> 
   <summary>Main Objectives</summary>

Objectives
======
####Part1:

- [x] Basic Prestashop module structure named "captureleads+name".
- [x] Ability to hook the module on left and right column, left must be default.
- [x] Basic hello world at frontend using smarty template system.
 
####Part2:

 - [x] Update version to 2.x.x
 - [x] Replace part1 helloWorld for a list of the last 3 viewed products.
 - [x] Populate list with name, price and truncated short description of the products.
   
####Part3:

 - [X] Update version to 3.x.x
 - [X] Add block with button below the previously created list.
 - [X] Spawn fancybox upon button being clicked.
 - [x] Fancybox contains a newsletter like form (with email field and condition checkbox)
 - [X] Data must be inserted inside a module table
 - [x] On module install **and upgrade** the module table must be created.

</details>

---

<details> 
   <summary>Further improvements</summary>
   
###Further improvements:
 
####Fixer Upper:
 
 - [ ] P2 - Remove unnecessary (productsViewed) query elements.
 - [ ] Sanitize front inputs.
 - [X] Improve file naming.
 - [ ] Remove embedded CCS and JS from tpl files.
 - [ ] Avoid hardcoding at ModuleFrontController (getModuleLInk).
 - [ ] Bootstrap email field blocking valid emails.
 
 
 
####TODOs:
#####Part2:

 - [ ] Number of items shown selector (Configure). 
 - [ ] Display price with tax.
 
#####Part3:
 
 - [ ] Add check for data already on the database.
 - [ ] Close fancybox after data POST.
 - [ ] Add frontend feedback of the result of the form.
 - [ ] Improve mail storage structure (slice mail/date storage).

 
###Late additons
 
######Maybe I'll get arround to implement them, eventially:
 
 - Continuous integration.
 - Automated testing.
 
 </details>

---

<details> 
    <summary>Nothing</summary>
    Told you
</details> 
