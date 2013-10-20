﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.17929
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SPortal.ServiceReference1 {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServiceReference1.IService1", CallbackContract=typeof(SPortal.ServiceReference1.IService1Callback))]
    public interface IService1 {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/Message", ReplyAction="http://tempuri.org/IService1/MessageResponse")]
        void Message(string text, string address);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/Message", ReplyAction="http://tempuri.org/IService1/MessageResponse")]
        System.Threading.Tasks.Task MessageAsync(string text, string address);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/Join", ReplyAction="http://tempuri.org/IService1/JoinResponse")]
        string[] Join(string userName, string[] friends);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/Join", ReplyAction="http://tempuri.org/IService1/JoinResponse")]
        System.Threading.Tasks.Task<string[]> JoinAsync(string userName, string[] friends);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/Disconnect", ReplyAction="http://tempuri.org/IService1/DisconnectResponse")]
        void Disconnect(string userName);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/Disconnect", ReplyAction="http://tempuri.org/IService1/DisconnectResponse")]
        System.Threading.Tasks.Task DisconnectAsync(string userName);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IService1Callback {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IService1/OnMessage")]
        void OnMessage(string message);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IService1/userJoined")]
        void userJoined(string userName);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IService1/userLeft")]
        void userLeft(string userName);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IService1Channel : SPortal.ServiceReference1.IService1, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class Service1Client : System.ServiceModel.DuplexClientBase<SPortal.ServiceReference1.IService1>, SPortal.ServiceReference1.IService1 {
        
        public Service1Client(System.ServiceModel.InstanceContext callbackInstance) : 
                base(callbackInstance) {
        }
        
        public Service1Client(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName) : 
                base(callbackInstance, endpointConfigurationName) {
        }
        
        public Service1Client(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, string remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public Service1Client(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public Service1Client(System.ServiceModel.InstanceContext callbackInstance, System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, binding, remoteAddress) {
        }
        
        public void Message(string text, string address) {
            base.Channel.Message(text, address);
        }
        
        public System.Threading.Tasks.Task MessageAsync(string text, string address) {
            return base.Channel.MessageAsync(text, address);
        }
        
        public string[] Join(string userName, string[] friends) {
            return base.Channel.Join(userName, friends);
        }
        
        public System.Threading.Tasks.Task<string[]> JoinAsync(string userName, string[] friends) {
            return base.Channel.JoinAsync(userName, friends);
        }
        
        public void Disconnect(string userName) {
            base.Channel.Disconnect(userName);
        }
        
        public System.Threading.Tasks.Task DisconnectAsync(string userName) {
            return base.Channel.DisconnectAsync(userName);
        }
    }
}
