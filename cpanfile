
requires "Graphics::ColorNames" => "0";

on 'test' => sub {
  requires "Test::More" => "1.3";
  requires "Test::Pod" => "1";
  requires "Test::NoWarnings" => "1";
};

on 'configure' => sub {
  requires "Module::Build" => "0";
};
