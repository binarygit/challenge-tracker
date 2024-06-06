# A new data type

When creating the /logs page (Find inside the log-displayer branch). I wanted a
brand new data structure that could store and let me query info about the commits
as a whole. 
For eg: each commit is a <# commit author:string message:string time:datetime > object 
which I can query as a whole like Commit.where(time: between_some_datetime).

Now I'm describing ActiveRecord here. The advantages are easy to see. I can
simply query and find what I need. The disadvantage is that these objects need to
have a model and a db table.

I didn't go the AR route because I knew it was stupid. However I was obstinate that
I wanted a data structure that encompassed all the data about the author, time, message.

So, I set out to create a hash of hashes which looked like: 
{#date: {author: #author, message: #message}}

I spent almost two hours trying to come up with a simple way I could create and use this.
My view looks like:

date
 - message, author
 - message, author
date
 - message, author
 - message, author

I came up with this method:
```
  def commits_grouped_by_date_hash(commits)
    commits.reduce({}) do |hash, commit|
      hash[date(commit)] = {author: nil, message: nil}
      hash[date(commit)][:author] = author(commit)
      hash[date(commit)][:message] = message(commit)
      hash
    end
  end
```

I had to use a double loop to render my view because of this data structure.
I couldn't go through with it because it made my head hurt.

The simpler method for dealing with these kinds of situations I found is to
reduce my data needs to what I need right now and then to build upon it.

```
<% dates(@commits).each do |date| %>
  <li><%= date %>:
    <ul>
      <% commits_on_date(date, @commits).each do |commit| %>
      <%= tag.li "#{message(commit)}, Author: #{author(commit)}" %>
      <% end %>
    </ul>
  </li>
<% end %>
```

This is much more simpler than what I had. It "builds" data as it goes along
rather than starting out with a concrete data structure.
