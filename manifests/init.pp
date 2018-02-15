class jenkins(
        $to_port    = $jenkins::params::to_port

) inherits jenkins::params{

        include jenkins::install
        include jenkins::service
        include jenkins::routing
}
