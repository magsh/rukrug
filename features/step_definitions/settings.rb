# coding: utf-8;

Допустим /^я должен быть уведомлён о неустановленном айтупи$/ do
  lambda { visit root_path }.should raise_error('I2P unavailable') unless I2P.available?
end

Допустим /^я должен быть уведомлён об остановленном айтупи$/ do
  I2P.stop!
  lambda { visit root_path }.should raise_error('I2P not running')
  I2P.start!
end
