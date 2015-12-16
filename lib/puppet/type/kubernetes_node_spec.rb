# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require 'puppet_x/puppetlabs/swagger/fuzzy_compare'


Puppet::Type.newtype(:kubernetes_node_spec) do
  
  @doc = "NodeSpec describes the attributes that a node is created with."
  

  ensurable

  

  newparam(:name, namevar: true) do
    desc 'Name of the node_spec.'
  end
  
    
      newproperty(:podCIDR) do
        desc "PodCIDR represents the pod IP range assigned to the node."
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:externalID) do
        desc "External ID of the node assigned by some machine database (e.g. a cloud provider). Deprecated."
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:providerID) do
        desc "ID of the node assigned by the cloud provider in the format: <ProviderName>://<ProviderSpecificNodeID>"
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:unschedulable) do
        desc "Unschedulable controls node schedulability of new pods. By default, node is schedulable. More info: http://releases.k8s.io/HEAD/docs/admin/node.md#manual-node-administration'`"
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end