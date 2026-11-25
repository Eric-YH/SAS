# SAS Base Programming Practice

Hands-on exercises completed 
All programs were written and tested in SAS OnDemand for Academics (SAS Studio).

## Repository structure

| Folder | Topics |
|---|---|
| `Proj1` | Getting data into SAS: formatted input with pointers and informats, PROC IMPORT for Excel files, LIBNAME, temporary vs. permanent data sets; working with data: IF-THEN/ELSE, DO groups, recoding sentinel values (777) to missing, MEAN with missing values |
| `Proj2` | Labels and formats: LABEL and FORMAT statements, DOLLAR and DATE formats, PROC FORMAT with value ranges, permanent format catalogs (LIBRARY=, FMTLIB, FMTSEARCH), CNTLIN=; character functions (SCAN, SUBSTR, TRIM, CATX, TRANWRD, INDEX); date functions (YEAR, INTCK, DATDIF, YRDIF, TODAY) |
| `Proj3` | DO loops (iterative, DO WHILE, OUTPUT, sum statement); one- and two-dimensional arrays; character-to-numeric conversion with INPUT; combining data sets (match-merge with IN=, concatenate, interleave); PROC TRANSPOSE with BY and VAR |
| `Proj4` | PROC SORT, FREQ, MEANS (BY vs. CLASS), UNIVARIATE; ODS EXCEL with one worksheet per BY group; error handling with PUTLOG, `_N_`, `_ERROR_` and `DATA _NULL_`; macro variables with %LET and a parameterized macro; PROC SQL joins |

## How to run

1. Upload the data files to your SAS OnDemand home folder.
2. Replace the file paths at the top of each program with your own home folder
   (for example `/home/your_user_id/`).
3. Run the programs within each day folder in order.


## Key takeaways

- A LENGTH statement must come before the first reference to a character variable; otherwise the first assigned value sets the length and longer values are silently truncated.
- Missing numeric values are smaller than any number, so conditions such as `x < 60` also select missing values.
- A two-level name (`libref.dataset`) is required both to create and to reference a permanent data set.
- User-defined formats stored in a library need `OPTIONS FMTSEARCH=` in every new session.
- MERGE and SET with a BY statement require the data to be sorted by the BY variable first.
- A variable's type cannot be changed; convert with INPUT or PUT into a new variable.
- Macro variables resolve inside double quotes but not single quotes.
- Always check the LOG: notes about type conversion or missing values often point to logic errors that do not stop the program.
