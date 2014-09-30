Deface::Override.new(:virtual_path => "spree/shared/_products",
                      :name => "add_sunspot_search_pagination",
                      :replace => "erb[silent]:contains('if paginated_products.respond_to')",
                      :closing_selector => "erb[silent]:contains('end')",
                      :text => "<%= paginate @searcher.sunspot.hits %>")
