# Standard configuration : we are using just a single node type "default"
# "default" will be our dojobox client configuration
#
# Liam Friel
# CoderDojo Bray

node default {

    # Install the various pre-requisites required to allow us to build the jabber components
    include apt::update

    # 0 : we will use the PostgreSQL backend for no other reason that I know it reasonably well
    # Ensure the Postgres DB is installed with the development libraries
    include postgresql::server
    include postgresql::client
    include postgresql::lib::devel
    
    # include the Expat components
    include expat
    
    # build the udns service
    include udns
     
    # Install the gnusasl components
    include gnusasl
    
    # Install the extra python components we'll use
    include pyextras
    
    # install the jabber components
    include jabber

}
