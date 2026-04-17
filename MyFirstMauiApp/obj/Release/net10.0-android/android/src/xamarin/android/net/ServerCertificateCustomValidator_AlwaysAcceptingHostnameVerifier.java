package xamarin.android.net;


public class ServerCertificateCustomValidator_AlwaysAcceptingHostnameVerifier
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		javax.net.ssl.HostnameVerifier
{

	public ServerCertificateCustomValidator_AlwaysAcceptingHostnameVerifier ()
	{
		super ();
		if (getClass () == ServerCertificateCustomValidator_AlwaysAcceptingHostnameVerifier.class) {
			mono.android.TypeManager.Activate ("Xamarin.Android.Net.ServerCertificateCustomValidator+AlwaysAcceptingHostnameVerifier, Mono.Android", "", this, new java.lang.Object[] {  });
		}
	}

	public boolean verify (java.lang.String p0, javax.net.ssl.SSLSession p1)
	{
		return n_verify (p0, p1);
	}

	private native boolean n_verify (java.lang.String p0, javax.net.ssl.SSLSession p1);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
