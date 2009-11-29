require 'helper'

class TestIconoclast < Test::Unit::TestCase
  # Tests:
  # 1. Iconoclast::version method should return something
  # 2. Iconoclast::icons method should return 1000 files for the famfamfam/silk icon set
  # 3. Iconoclast::icon_names method should return 1000 files for the famfamfam/silk icon set
  
  context "The iconoclast gem" do
    #setup do
    #end
    
    should "have a version" do
      assert Iconoclast.version
    end
    
    should "have a libpath" do
      assert Iconoclast.libpath
    end
    
    context "with the famfamfam provider" do
      setup do
        @provider = 'famfamfam'
        @count = 1000
      end
      
      should "return #{@count} icons when sent #icons method" do
        assert_equal @count, Iconoclast.icons( { :provider => @provider } ).count
      end
      should "return 1000 icons when sent #icon_names method" do
        assert_equal @count, Iconoclast.icon_names( { :provider => @provider } ).count
      end
      
      context "with the silk iconset" do
        setup do
          @set = 'silk'
        end

        should "return #{@count} icons when sent #icons method" do
          assert_equal @count, Iconoclast.icons( { :provider => @provider, :set => @set } ).count
        end
        should "return #{@count} icons when sent #icon_names method" do
          assert_equal @count, Iconoclast.icon_names( { :provider => @provider, :set => @set } ).count
        end
        
        context "with the png format" do
          setup do
            @format = 'png'
          end
            
          should "return #{@count} icons when sent #icons method" do
            assert_equal @count, Iconoclast.icons( { :provider => @provider, :set => @set, :format => @format } ).count
          end
          should "return #{@count} icons when sent #icon_names method" do
            assert_equal @count, Iconoclast.icon_names( { :provider => @provider, :set => @set, :format => @format } ).count
          end
        end   # png format
        
      end     # silk iconset
      
      context "with the flag iconset" do
        setup do
          @set = 'flags'
          @count = 247
        end

        should "return 247 icons when sent #icons method" do
          assert_equal @count, Iconoclast.icons( { :provider => @provider, :set => @set } ).count
        end
        should "return 247 icons when sent #icon_names method" do
          assert_equal @count, Iconoclast.icon_names( { :provider => @provider, :set => @set } ).count
        end
        
        context "with the png format" do
          setup do
            @format = 'png'
          end
          should "return 247 icons when sent #icons method" do
            assert_equal @count, Iconoclast.icons( { :provider => @provider, :set => @set, :format => @format }).count
          end
        end
        
        context "with the gif format" do
          setup do
            @format = 'gif'
          end
          should "return 247 icons when sent #icons method" do
            assert_equal @count, Iconoclast.icons( { :provider => @provider, :set => @set, :format => @format }).count
          end
        end
        
      end
      
    end
  end
end
