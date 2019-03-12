# ruby-build-aws-lambda

##### This repo is deploying simple ruby codes to AWS-Lambda

Clone `git clone git@github.com:Reznov9185/rblambda.git`

Check the ruby version!

Bundle `bundle install`

On terminal: `ruby build.rb`

##### Known issues:

TODO:
1. A shit ton of left out features, but it's as simple as it gets for now
2. Gems are still now working! Even in the vendor folders
3. Sometimes `lambda_function.rb` is not updating for some weird reason! 

Features on hand:
1. Automated Deploys with AWS SAM
2. Full support with Gems
3. Install gem dependencies on deployments like Chalice!
