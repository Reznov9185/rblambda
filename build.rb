require_relative 'directory_zipper'

# TODO: Please refactor this, there is a shit ton of failing points!
def upload_to_aws(lambda)
  puts 'Initializing AWS Lambda upload...'
  puts 'Starting to upload to AWS...'
  puts exec("aws lambda update-function-code --function-name #{lambda} --zip-file fileb://archive.zip --publish")
  puts 'Upload Successful ...'
  puts '--------------------------------'
end

# Trying to get the lambda name
puts 'Uses: ruby build.rb'
print 'Please Enter your lambda name: '
lambda = gets
lambda.gsub!(/\s+/, '')
puts '--------------------------------'
puts "Here is your function: #{lambda}"
puts '--------------------------------'
puts 'Now trying to Archive(archive.zip) your lambda named directory...'
puts "Checking for the directory: #{lambda}..."
puts '--------------------------------'

if File.directory?(lambda)
  puts 'Zipping the directory to archive.zip...'
  zf = ZipFileGenerator.new(lambda, 'archive.zip')
  zf.write()
  puts 'Zipping Completed!'
  puts '--------------------------------'
  upload_to_aws(lambda)
else
  puts "C/'mon! No directory found for Lambda named: #{lambda}"
  puts 'Exiting...'
  puts '--------------------------------'
end
