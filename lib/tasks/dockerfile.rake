namespace :dockerfile do
  desc "build Dockerfile"
  task :build  => :environment do
    view_context = ActionView::Base.new('.')

    view_context.assign(name: 'hoge')

    out = view_context.render(template: 'Dockerfile', prefixes: '')
    File.write("#{Rails.root}/Dockerfile", out)
  end
end
