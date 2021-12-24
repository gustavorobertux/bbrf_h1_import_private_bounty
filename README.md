### Import Private and Reward Paying Programs on Hackerone

Using the script is simple:

- Generate your token on the Hackerone page
- Download the ```import.sh``` script
- In this script, change the variables, as below:

For example, my username is grrg so put:

```USER_HACKERONE="grrg"```

And here you will put your token that was previously generated on the Hackerone page.

```TOKEN_HACKERONE="xxxxxxx/xxxxxxxxxxxxxxxxxx+xxxxxxxxxxx+xxxx="```

- Set execution permission for the ```import.sh``` file
 
```chmod +x import.sh```

- Run the file
```./import.sh```

**IMPORTANT:** Ignore generated errors, bbrf is currently buggy, maintainer is aware.
