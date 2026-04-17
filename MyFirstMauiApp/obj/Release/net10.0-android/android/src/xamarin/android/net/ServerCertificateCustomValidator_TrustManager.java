package xamarin.android.net;


public class ServerCertificateCustomValidator_TrustManager
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		javax.net.ssl.X509TrustManager,
		javax.net.ssl.TrustManager
{

	public ServerCertificateCustomValidator_TrustManager ()
	{
		super ();
		if (getClass () == ServerCertificateCustomValidator_TrustManager.class) {
			mono.android.TypeManager.Activate ("Xamarin.Android.Net.ServerCertificateCustomValidator+TrustManager, Mono.Android", "", this, new java.lang.Object[] {  });
		}
	}

	public void checkClientTrusted (java.security.cert.X509Certificate[] p0, java.lang.String p1)
	{
		n_checkClientTrusted (p0, p1);
	}

	private native void n_checkClientTrusted (java.security.cert.X509Certificate[] p0, java.lang.String p1);

	public void checkServerTrusted (java.security.cert.X509Certificate[] p0, java.lang.String p1)
	{
		n_checkServerTrusted (p0, p1);
	}

	private native void n_checkServerTrusted (java.security.cert.X509Certificate[] p0, java.lang.String p1);

	public java.security.cert.X509Certificate[] getAcceptedIssuers ()
	{
		return n_getAcceptedIssuers ();
	}

	private native java.security.cert.X509Certificate[] n_getAcceptedIssuers ();

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
