# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require 'puppet_x/puppetlabs/swagger/fuzzy_compare'


Puppet::Type.newtype(:kubernetes_node_system_info) do
  
  @doc = "NodeSystemInfo is a set of ids/uuids to uniquely identify the node."
  

  ensurable

  
  validate do
    required_properties = [
    
      machineID,
    
      systemUUID,
    
      bootID,
    
      kernelVersion,
    
      osImage,
    
      containerRuntimeVersion,
    
      kubeletVersion,
    
      kubeProxyVersion,
    
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[property].nil? and self.provider.send(property) == :absent
        fail "You must provide a #{property}"
      end
    end
  end
  

  newparam(:name, namevar: true) do
    desc 'Name of the node_system_info.'
  end
  
    
      newproperty(:machineID) do
        desc "Machine ID reported by the node."
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:systemUUID) do
        desc "System UUID reported by the node."
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:bootID) do
        desc "Boot ID reported by the node."
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:kernelVersion) do
        desc "Kernel Version reported by the node from 'uname -r' (e.g. 3.16.0-0.bpo.4-amd64)."
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:osImage) do
        desc "OS Image reported by the node from /etc/os-release (e.g. Debian GNU/Linux 7 (wheezy))."
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:containerRuntimeVersion) do
        desc "ContainerRuntime Version reported by the node through runtime remote API (e.g. docker://1.5.0)."
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:kubeletVersion) do
        desc "Kubelet Version reported by the node."
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:kubeProxyVersion) do
        desc "KubeProxy Version reported by the node."
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end