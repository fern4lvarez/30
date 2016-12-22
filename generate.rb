require 'erb'

songs = [
  {"title"=>"Real Estate — Green Aisles",
   "yt" => "VkBDndlduxA",
   "sp" => "spotify:track:1H4mV1lgrNBUjZgRjjP1nu"},
  {"title"=>"El Niño Gusano — Casanova",
   "yt" => "WsZqC5ovbzQ",
   "sp" => ""},
  {"title"=>"Mogwai — How To Be A Werewolf",
   "yt" => "",
   "sp" => "spotify:track:7iqFA5qbxdKVdbx7LB6PZQ"},
  {"title"=>"Boards of Canada — Dayvan Cowboy",
   "yt" => "",
   "sp" => "spotify:track:4Y2W4zKa3q72ztbkA0r8Va"},
  {"title"=>"Los Planetas — Flotando sobre Loscos",
   "yt" => "",
   "sp" => "spotify:track:3Abkm8dYKXgw0l3P62Em0W"},
  {"title"=>"Blur — Out of Time",
   "yt" => "",
   "sp" => "spotify:track:4JMEhtQ4qQ5mwN7eTLpDpG"},
  {"title"=>"Pixies — Debaser",
   "yt" => "",
   "sp" => "spotify:track:3FzKPS0oVknVlCW3PhxIHl"},
  {"title"=>"Weezer — Why Bother?",
   "yt" => "",
   "sp" => "spotify:track:00KJWBnpipklwpQRAAPhHg"},
  {"title"=>"Sonic Youth — Teen Age Riot",
   "yt" => "",
   "sp" => "spotify:track:0WIbzDVEpmOyBnqqdtqIL9"},
  {"title"=>"Destroyer — Suicide Demo For Kara Walker",
   "yt" => "",
   "sp" => "spotify:track:6VDEi0C8J7E1YUP3qP6Ao1"},
  {"title"=>"Pale Saints — Sight of You",
   "yt" => "",
   "sp" => "spotify:track:2XMwak0QKaukNo502mcufY"},
  {"title"=>"Tocotronic — Eure Lieve tötet mich",
   "yt" => "",
   "sp" => "spotify:track:0echKlJ3MU6sKroKX86L1B"},
  {"title"=>"Migala — Lecciones de Vuelo con Mathias Rust",
   "yt" => "",
   "sp" => "spotify:track:0o5WSFv2htL6dmNUjIW9TB"},
  {"title"=>"Sufjan Stevens — John Wayne Gacy, Jr.",
   "yt" => "",
   "sp" => "spotify:track:2gFBh7NnEfSeBoZZDB5d2C"},
  {"title"=>"Why? — Gemini (Birthday Song)",
   "yt" => "",
   "sp" => "spotify:track:3lvfZJ1HSTUKSGttRNRGMr"},
  {"title"=>"Monolake — Carbon",
   "yt" => "",
   "sp" => "spotify:track:0lOmvWyHRADxxhWLb7iYiw"},
  {"title"=>"Animal Collective — Fireworks",
   "yt" => "",
   "sp" => "spotify:track:74sEAHGLjLCjtvaxTnAJHv"},
  {"title"=>"Neutral Milk Hotel — The King of Carrot Flowers Parts II and III",
   "yt" => "",
   "sp" => "spotify:track:29bIdfUmIMFi82y87nZcjJ"},
  {"title"=>"The Stone Roses — I Wanna Be Adored",
   "yt" => "",
   "sp" => "spotify:track:758wEKVqfYopJIHYWdLVd4"},
  {"title"=>"Pavement — Stereo",
   "yt" => "",
   "sp" => "spotify:track:3SqN09FlFXWggOVQ9pGWLR"},
  {"title"=>"Dj Mujava — Township Funk",
   "yt" => "",
   "sp" => "spotify:track:32bk6u6Pbe2cotvyKJgrP0"},
  {"title"=>"Tame Impala — Why Won't They Talk To Me?",
   "yt" => "",
   "sp" => "spotify:track:6VRM5bZ7bGci7vAbeSNSNa"},
  {"title"=>"At The Drive-In — Rolodex Propaganda",
   "yt" => "",
   "sp" => "spotify:track:09fhuvp5FbbLPYRTNX56HP"},
  {"title"=>"Broken Social Scene — 7/4 Shoreline",
   "yt" => "",
   "sp" => "spotify:track:42TP2X3293Cou18ekXt2xq"},
  {"title"=>"LCD Soundsystem — All My Friends",
   "yt" => "",
   "sp" => "spotify:track:2Ud3deeqLAG988pfW0Kwcl"},
  {"title"=>"Teenage Fanclub — Everything Flows",
   "yt" => "",
   "sp" => "spotify:track:6urRcrVec0ONX8MxwG4ohq"},
  {"title"=>"Jürgen Paape — So Weit Wie Noch Nie",
   "yt" => "",
   "sp" => "spotify:track:0bwx4zKADCP377Ffab5VMw"},
  {"title"=>"The New Year — The End's Not Near",
   "yt" => "",
   "sp" => "spotify:track:2NQr3c7xzZq8kHENH6mnnz"},
  {"title"=>"Wilco — Spiders (Kidsmoke)",
   "yt" => "",
   "sp" => "spotify:track:5VT6IkQWpeXhWa7ZWjKDQp"},
  {"title"=>"Bedhead — Bedside Table",
   "yt" => "",
   "sp" => "spotify:track:2gHBrLv9jPtRSRDR8O4PxS"}
].shuffle

def get_template()
  %{    <div class="song">
        <p class="lead"><%= title %></p>
        <% if not yt.empty? %>
		    <iframe width="560" height="315" src="https://www.youtube.com/embed/<%= yt %>" frameborder="0" allowfullscreen id="video01"></iframe>
       <% end %>
        <% if not sp.empty? %>
		    <br>
		    <iframe src="https://embed.spotify.com/?uri=<%= sp %>" width="560" height="100" frameborder="0" allowtransparency="true" id="video02"></iframe>
       <% end %>
      </div>
  }
end

renderer = ERB.new(get_template())
block = []

for song in songs do
  output = ""
  title = song["title"]
  yt = song["yt"]
  sp = song["sp"]
  output = renderer.result(binding)
  block << output
end

puts block


