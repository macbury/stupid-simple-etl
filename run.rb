require_relative './pipes/csv_reader'
require_relative './pipes/reject_header'
require_relative './pipes/inserter'
require_relative './pipes/translator'
require_relative './pipes/validator'
require_relative './pipeline'

Pipeline.pipe(CsvReader.new('./data/test.csv'))
        .pipe(RejectHeader)
        .pipe(Validator)
        .pipe(Translator)
        .pipe(Inserter.new('./final.csv'))
        .call
