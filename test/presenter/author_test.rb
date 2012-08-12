# -*- encoding: utf-8 -*-
require "helper"

describe Picasa::Presenter::Author do
  before do
    body = MultiXml.parse(fixture("presenters/album_list/album_list.xml"))
    @author = Picasa::Presenter::Author.new(body["feed"]["author"])
  end

  it "has name" do
    assert_equal "Wojciech Wnętrzak", @author.name
  end

  it "has uri" do
    assert_equal "https://picasaweb.google.com/106136347770555028022", @author.uri
  end
end
