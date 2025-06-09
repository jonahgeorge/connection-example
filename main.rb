require 'sinatra'

get '/' do
  erb :index
end

__END__

@@ layout
<html>
  <head>
    <title>Connection Example</title>
    <body>
      <%= yield %>
    </body>
</html>

@@ index
  <h1>Connection Example</h1>

  <p>Test</p>
