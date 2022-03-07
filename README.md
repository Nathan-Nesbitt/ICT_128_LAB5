# Answers

Please only modify `ICT_128_LAB_5.psm1`. Do not change the function names or the filename, for example if the demo code
looks like the following:

```ps
function Q1 {

}
```

Your solution should only be **between** the brackets. 

# Testing

We are going to be using pester in this lab. You can install it by running `Install-Module Pester -Force` then `Import-Module Pester -PassThru`

To tests your answers simply run `./ICT_128_LAB_5.Tests.ps1`.

# Questions

1. Take in a list of processes, use comparison operators to limit the 
    outputted processes to those that have even handle counts.
2. Read in the CSV of users, change the column names to be
    - FirstName
    - LastName
    - Surname
    - Account
    - CompanyName
    - Title

3. *IN A SEPARATE FILE called Multiply.ps1* Create a Cmdlet that takes in two
    parameters and multiplies them together. Ensure there is a help entry 
    for the script with the following:
    - Synopsis
    - Description
    - Parameters
    - Example

4. Create a function that takes in a single mandatory variable $a,
    and a second non-mandatory variable $b. If the $b parameter is included
    return $a divided by $b. Otherwise just return $a.

5. Create an advanced function that takes in a variable called $MyCoolName,
    which should also have an alias called `n`. Return the input for $MyCoolName.

6. Create a function that takes in two numbers $hours, $minutes. Ensure that
    the provided values are limited to realistic times. Return the time in
    HH:MM time format.

7. Create a function that, when the verbose parameter is provided, prints out
    "HELLO WORLD!"