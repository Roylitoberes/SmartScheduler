package mono.com.google.android.gms.common.api;


public class PendingResult_StatusListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.google.android.gms.common.api.PendingResult.StatusListener
{

	public PendingResult_StatusListenerImplementor ()
	{
		super ();
		if (getClass () == PendingResult_StatusListenerImplementor.class) {
			mono.android.TypeManager.Activate ("Android.Gms.Common.Apis.PendingResult+IStatusListenerImplementor, Xamarin.GooglePlayServices.Base", "", this, new java.lang.Object[] {  });
		}
	}

	public void onComplete (com.google.android.gms.common.api.Status p0)
	{
		n_onComplete (p0);
	}

	private native void n_onComplete (com.google.android.gms.common.api.Status p0);

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
