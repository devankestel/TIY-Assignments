prefix            verb      url pattern                 action
---------------------------------------------------------------
manufacturers     GET       '/manufacturers'            index
manufacturer      GET       '/manufacturers/:id'        show
edit_manufacturer GET       '/manufacturers/:id/edit'   edit
manufacturer      PATCH/PUT '/manufacturers/:id'        update
new_manufacturer  GET       '/manufacturers/new'        new
manufacturers     POST      '/manufacturers'            create
manufacturer      DELETE    '/manufacturers/:id'        destroy

rake routes presents it like this
manufacturers     GET       '/manufacturers'            index
                 POST      '/manufacturers'             create
manufacturer      GET       '/manufacturers/:id'        show
                 DELETE    '/manufacturers/:id'         destroy
                 PATCH/PUT '/manufacturers/:id'         update
edit_manufacturer GET       '/manufacturers/:id/edit'   edit
new_manufacturer  GET       '/manufacturers/new'        new

manufacturers_path(1) #=> '/manufacturers.1'
like a file extension

root_path #=> '/'
root_url #=> 'http://www.some_example_site.com/'