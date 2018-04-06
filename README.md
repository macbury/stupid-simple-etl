## Simple ETL/Pipe concept fun idea

- Using only ruby liblaries, no dependency.
- Memory efficient(dont read everything into memory)
- Super simple syntax

```
ruby run.rb
```

## Example code

```
Pipeline.pipe(CsvReader.new('./data/test.csv'))
        .pipe(RejectHeader)
        .pipe(Validator)
        .pipe(Translator)
        .pipe(Inserter.new)
        .call

```
