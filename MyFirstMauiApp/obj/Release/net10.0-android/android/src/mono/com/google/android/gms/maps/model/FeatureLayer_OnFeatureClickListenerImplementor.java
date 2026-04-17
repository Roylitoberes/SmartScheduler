package mono.com.google.android.gms.maps.model;


public class FeatureLayer_OnFeatureClickListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.google.android.gms.maps.model.FeatureLayer.OnFeatureClickListener
{

	public FeatureLayer_OnFeatureClickListenerImplementor ()
	{
		super ();
		if (getClass () == FeatureLayer_OnFeatureClickListenerImplementor.class) {
			mono.android.TypeManager.Activate ("Android.Gms.Maps.Model.FeatureLayer+IOnFeatureClickListenerImplementor, Xamarin.GooglePlayServices.Maps", "", this, new java.lang.Object[] {  });
		}
	}

	public void onFeatureClick (com.google.android.gms.maps.model.FeatureClickEvent p0)
	{
		n_onFeatureClick (p0);
	}

	private native void n_onFeatureClick (com.google.android.gms.maps.model.FeatureClickEvent p0);

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
