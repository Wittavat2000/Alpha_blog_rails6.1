# README

 DR code: Dont Repeat Yourself

-re-factoring
- extract away the redundancies in code

<%= link_to 'Article listing', articles_path %> 
<%= link_to 'About page', about_path %>


<table>
    <thead>
        <tr>
            <th>Title</th>
            <th>Description</th>
            <th colspan="3">Action</th>
        </tr>
    </thead>

    <tbody>
        <% @articles.each do |article| %>
            <tr>
                <td><%= article.title %></td>
                <td><%= article.description %></td>
                <td><%= link_to 'Show', article_path(article) %></td>
                <td><%= link_to 'Edit', edit_article_path(article) %></td>
                <td><%= link_to 'Destroy',  article_path(article),  method: :delete, data: { confirm: 'Are you sure?' } %></td>
            </tr>
        <% end %>
    </tbody>
</table>

<p><%= link_to 'Create new article', new_article_path%></p>
